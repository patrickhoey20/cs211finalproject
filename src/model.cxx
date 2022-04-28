#include "model.hxx"
#include <random>
#include <utility>

using namespace ge211;

special::special(std::string str, special::Position start, special::Position end)
        : type(std::move(str)),
          top(end),
          bottom(start)
{ }

Model::Model()
        : turn_(Player::blue),
          winner_(Player::neither),
          board_(),
          roll_(0),
          // Adjust vertically -> one 1/4 of the way down square, other 1/4 way up square
          bplayer_(Player::blue, {0,9}),
          rplayer_(Player::red, {0,9}),
          laddered_(false),
          chuted_(false),
          // Create an array of possible chute/ladder positions, chose randomly (below)
          possible_chute_positions_({{{{0,3}, {2,0}},{{0,7},{2,5}},{{2,8},{4,3}}},
                                     {{{6,6}, {4,1}},{{5,4},{6,1}},{{6,5},{5,2}}},
                                     {{{8,9}, {7,7}},{{9,2},{6,0}},{{9,9},{8,6}}}}),
          possible_ladder_positions_({{{{1,7}, {2,5}},{{2,4},{0,1}},{{0,4},{5,1}}},
                            {{{4,8}, {5,6}},{{5,8},{1,3}},{{5,8},{3,5}}},
                            {{{6,9},{9,6}},{{7,6},{9,5}},{{6,3},{9,2}}}})


{
    // Generate a random game seed in order to randomize the locations of the chutes/ladders
    std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_int_distribution<int> random_num(0,2);
    int game_seed = random_num(mt);
    for (int i = 0; i < 3; i++) {
        special chute("chute", possible_chute_positions_[i][game_seed][0], possible_chute_positions_[i][game_seed][1]);
        special ladder("ladder", possible_ladder_positions_[i][game_seed][0], possible_ladder_positions_[i][game_seed][1]);
        chutes_.push_back(chute);
        ladders_.push_back(ladder);
    }
}

Model::Rectangle
Model::board() const
{
    return board_.all_positions();
}

int
Model::get_roll() const
{
    return roll_;
}

void
Model::play_move()
{
    if (is_game_over()) {
        set_game_over_();
    }
    // Randomly generate dice roll (2-12)
    std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_int_distribution<int> random_num(2,12);
    roll_ = random_num(mt);
    // Advance piece
    // Board needs to keep track of position places
    advance_position(roll_);
    // Switch turn
    turn_ = other_player(turn_);
}

void Model::advance_position(int roll) {
    chuted_ = false;
    laddered_ = false;
    // Position of turn incremented by roll
    for (int i = 0; i < roll; i++) {
        if (turn_ == Player::red) {
            if ((rplayer_.position.x == 0 && rplayer_.position.y == 0) ||
                    (bplayer_.position.x == 0 && bplayer_.position.y == 0)) { // If either player at winning position
                set_game_over_();
            } else {
                if ((rplayer_.position.x == 0 && rplayer_.direction == -1) ||
                    (rplayer_.position.x == 9 && rplayer_.direction == 1)) { // If we've reached the edge of the board
                    rplayer_.position.y--; // Advance up the board
                    rplayer_.direction *= -1; // Switch direction
                } else { // If not at edge of board, just keep moving right or left
                    rplayer_.position.x += rplayer_.direction;
                }
            }
        } else if (turn_ == Player::blue) { // Same logic we used for red player
            if ((bplayer_.position.x == 0 && bplayer_.position.y == 0) ||
            (rplayer_.position.x == 0 && rplayer_.position.y == 0)) {
                set_game_over_();
            } else {
                if ((bplayer_.position.x == 0 && bplayer_.direction == -1) ||
                    (bplayer_.position.x == 9 && bplayer_.direction == 1)) {
                    bplayer_.position.y--;
                    bplayer_.direction *= -1;
                } else {
                    bplayer_.position.x += bplayer_.direction;
                }
            }
        }
        if ((rplayer_.position.x == 0 && rplayer_.position.y == 0) ||
            (bplayer_.position.x == 0 && bplayer_.position.y == 0)) {
            // Check if game is over again (in case roll is exactly enough to get to final square)
            set_game_over_();
        }
    }
    // Check if we're at the bottom of a ladder or top of a chute
    check_ladder();
    check_chute();
}

// Sets the game over by setting the winner and setting turn to neither
void Model::set_game_over_() {
    if (bplayer_.position.x == 0 && bplayer_.position.y == 0) {
        winner_ = Player::blue;
    } else if (rplayer_.position.x == 0 && rplayer_.position.y == 0) {
        winner_ = Player::red;
    }
    turn_ = Player::neither;
}

// Returns the position of a given player, returns {0,0} if not given Red or Blue Player
Posn<int> Model::get_player_pos(Player player) const {
    if (player == Player::blue) {
        return bplayer_.position;
    } else if (player == Player::red) {
        return rplayer_.position;
    }
    return {0,0};
}

// Checks if we're at the bottom of a ladder, and if so, moves to the top
void Model::check_ladder() {
    if (turn_ == Player::blue) {
        for (const special& ladder : ladders_) {
            if (bplayer_.position == ladder.bottom) {
                laddered_ = true;
                bplayer_.position = ladder.top;
                if ((ladder.bottom.y - ladder.top.y) % 2 == 1) {
                    bplayer_.direction *= -1;
                }
            }
        }
    } else if (turn_ == Player::red){
        for (const special& ladder : ladders_) {
            if (rplayer_.position == ladder.bottom) {
                laddered_ = true;
                rplayer_.position = ladder.top;
                if ((ladder.bottom.y - ladder.top.y) % 2 == 1) {
                    rplayer_.direction *= -1;
                }
            }
        }
    }
}

// Checks if we're at the top of a chute, and if so, moves to the bottom
void Model::check_chute() {
    if (turn_ == Player::blue) {
        for (const special& chute : chutes_) {
            if (bplayer_.position == chute.top) {
                chuted_ = true;
                bplayer_.position = chute.bottom;
                if ((chute.bottom.y - chute.top.y) % 2 == 1) {
                    bplayer_.direction *= -1;
                }
            }
        }
    } else if (turn_ == Player::red){
        for (const special& chute : chutes_) {
            if (rplayer_.position == chute.top) {
                chuted_ = true;
                rplayer_.position = chute.bottom;
                if ((chute.bottom.y - chute.top.y) % 2 == 1) {
                    rplayer_.direction *= -1;
                }
            }
        }
    }
}

// Checks if a specific position is the top or bottom of a chute (used in view.cxx)
bool Model::is_chute(Model::Position pos) const {
    for (const special& pos_set : chutes_) {
        if (pos == pos_set.top || pos == pos_set.bottom) {
            return true;
        }
    }
    return false;
}

// Checks if a specific position is the top or bottom of a ladder (used in view.cxx)
bool Model::is_ladder(Model::Position pos) const {
    for (const special& pos_set : ladders_) {
        if (pos == pos_set.top || pos == pos_set.bottom) {
            return true;
        }
    }
    return false;
}


// Returns the corresponding bottom coordinate if the current pos is a top position of a ladder
// or chute, returns {-1,-1} if the current pos is not a top position of a ladder or chute.
Model::Position Model::is_top(Model::Position pos) const {
    for (const special& pos_set : chutes_) {
        if (pos == pos_set.top) {
            return pos_set.bottom;
        }
    }
    for (const special& pos_set : ladders_) {
        if (pos == pos_set.top) {
            return pos_set.bottom;
        }
    }
    return {-1,-1};
}

// Returns current turn
Player Model::get_turn() const {
    return turn_;
}

// Returns true if current player going up a ladder, returns false otherwise
bool Model::is_laddered() const {
    return laddered_;
}

// Returns true if current player going down a chute, returns false otherwise
bool Model::is_chuted() const{
    return chuted_;
}

// For testing - clears chutes_ and adds one chute to be tested on
void Model::set_chute(Position top, Position bot) {
    chutes_.clear();
    special chute("chute",bot,top);
    chutes_.push_back(chute);
}

// For testing - clears ladders_ and adds one ladder to be tested on
void Model::set_ladder(Model::Position top, Position bot) {
    ladders_.clear();
    special ladder("ladder",bot,top);
    ladders_.push_back(ladder);
}

// Returns true if the game is over, false otherwise
bool Model::is_game_over() const {
    return turn() == Player::neither;
}




