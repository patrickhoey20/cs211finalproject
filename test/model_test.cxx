#include "model.hxx"
#include <catch.hxx>

using Position = Board::Position;

struct Test_access
{
    // Data members
    Model& model;

    // Member functions
    explicit Test_access(Model&);
    void advance_position(int roll);
    player_obj get_bplayer();
    void set_chute(Position top, Position bot);
    void set_ladder(Position top, Position bot);

};


TEST_CASE("simulate full game with one piece")
{
    // Setup (using test_access)
    Model model;
    Test_access access(model);
    // Check that game piece is initialized in the correct place
    CHECK(access.get_bplayer().position.x == 0);
    CHECK(access.get_bplayer().position.y == 9);
    // Check that game piece can move to the right as expected
    access.advance_position(6);
    CHECK(access.get_bplayer().position.x == 6);
    CHECK(access.get_bplayer().position.y == 9);
    // Check that game piece can snake up the board (switching direction from right to left)
    access.advance_position(6);
    CHECK(access.get_bplayer().position.x == 7);
    CHECK(access.get_bplayer().position.y == 8);
    // Check that game piece can move to the left as expected
    access.advance_position(4);
    CHECK(access.get_bplayer().position.x == 3);
    CHECK(access.get_bplayer().position.y == 8);
    // Check that game piece can snake up the board (switching direction from left to right)
    access.advance_position(5);
    CHECK(access.get_bplayer().position.x == 1);
    CHECK(access.get_bplayer().position.y == 7);
    // Check that game piece can climb up a ladder
    access.set_ladder({5,5},{4,7});
    CHECK(model.is_top({5,5}).x == 4);
    CHECK(model.is_top({5,5}).y == 7);
    access.advance_position(3);
    CHECK(access.get_bplayer().position.x == 5);
    CHECK(access.get_bplayer().position.y == 5);
    // Check that we're still moving right after climbing the ladder
    // (since we climbed a ladder of even height (2), so direction doesn't change)
    CHECK(access.get_bplayer().direction == 1);
    // Check that game piece can go down a chute
    access.set_chute({8,5},{7,6});
    CHECK(model.is_top({8,5}).x == 7);
    CHECK(model.is_top({8,5}).y == 6);
    access.advance_position(3);
    CHECK(access.get_bplayer().position.x == 7);
    CHECK(access.get_bplayer().position.y == 6);
    // Check that we're now moving left after falling down the chute (originally right, now left)
    // (since we climbed a chute of odd height (1), so direction should change)
    CHECK(access.get_bplayer().direction == -1);
    // Check that once we've hit the final square, the game ends
    access.advance_position(100);
    // Check that player stops moving after it has hit the last square
    CHECK(access.get_bplayer().position.x == 0);
    CHECK(access.get_bplayer().position.y == 0);
    // Check that game is over, turn is neither, and winner is player that hit last square
    CHECK(model.turn() == Player::neither);
    CHECK(model.winner() == Player::blue);
    CHECK(model.is_game_over());
}


Test_access::Test_access(Model& model)
        : model(model)
{ }

void Test_access::advance_position(int roll)
{
    return model.advance_position(roll);
}

player_obj Test_access::get_bplayer()
{
    return model.bplayer_;
}

void Test_access::set_chute(Position top, Position bot) {
    return model.set_chute(top, bot);
}

void Test_access::set_ladder(Position top, Position bot) {
    return model.set_ladder(top, bot);
}
