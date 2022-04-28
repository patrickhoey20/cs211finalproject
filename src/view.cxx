#include "view.hxx"

using Color = ge211::Color;
static int const grid_size = 80;

View::View(Model const& model, ge211::Mixer& mixer)
        : noise_done({}),
          model_(model),
          block_dims(grid_size - 1, grid_size - 5),
          square_sprite(block_dims, Color::medium_cyan()),
          rplayer("rpiece-nobg.png"),
          bplayer("bpiece.png"),
          chute_sqr(block_dims, Color::medium_green()),
          ladder_sqr(block_dims, Color::medium_yellow()),
          chute("slide_final.jpeg"),
          ladder("ladder_final.png"),
          mixer_(mixer)
{
    load_audio_();
}

void
View::draw(ge211::Sprite_set& set) {
    chute_ladder_sounds();
    add_board_elements(set);
}

View::Dimensions
View::initial_window_dimensions() const
{
    return grid_size * model_.board().dimensions();
}

std::string
View::initial_window_title()
{
    return "Chutes and Ladders";
}

View::Position View::board_to_screen(Model::Position pos) {
    View::Position newpos(grid_size*pos.x, (grid_size-4)*pos.y);
    return newpos;
}

// Centers the image sprites horizontally
View::Position View::center_circle(Player player, Position pos) {
    pos.x += int((grid_size/2.0) - ((grid_size - 3.0)/4.0));
    if (player == Player::red) {
        pos.y += int(grid_size - (2*(grid_size - 3.0)/4.0));
    }
    return pos;
}

// Loads all audio (background music, ascending sound, descending sound, and win sound)
void View::load_audio_() {
    ladder_sound_.try_load("ascend.wav", mixer_);
    chute_sound_.try_load("descend.wav", mixer_);
    win_sound_.try_load("win-sound.wav", mixer_);
    if (!model_.is_game_over()) {
        if (bg_music_.try_load("bg.mp3", mixer_)) {
            mixer_.set_music_volume(.1);
            mixer_.play_music(bg_music_, true);
        }
    }
}

// Plays sound when player goes down chute or up ladder
void View::chute_ladder_sounds() {
    if (model_.is_chuted() && noise_done.empty()) {
        noise_done = mixer_.try_play_effect(chute_sound_, .1);
    } else if (model_.is_laddered() && noise_done.empty()) {
        noise_done = mixer_.try_play_effect(ladder_sound_, .1);
    }
}

// Adds all board elements: board squares, ladders, chutes, ladder squares, chute squares,
// and information at the bottom (roll and current turn). Removes the losing player from the
// screen if there's a winner.
void View::add_board_elements(ge211::Sprite_set &set) {
    for (auto pos: model_.board()) {
        View::Position newpos = board_to_screen(pos);
        set.add_sprite(square_sprite, newpos, 0);
        if (model_.is_chute(pos)) {
            add_chutes(set,pos,newpos);
        } else if (model_.is_ladder(pos)) {
            add_ladders(set, pos, newpos);
        }
        check_game_over(set);
        draw_info(set);
    }
}

// Adds chutes to random locations
void View::add_chutes(ge211::Sprite_set &set, View::Position pos, View::Position newpos) {
    set.add_sprite(chute_sqr, newpos, 1);
    if (model_.is_top(pos).x != -1) {
        Position bot = model_.is_top(pos);
        double squared_chute_dist = (pos.x - bot.x) * (pos.x - bot.x) + (pos.y - bot.y) * (pos.y - bot.y);
        double chute_size = sqrt(squared_chute_dist);
        double chute_size_screen = chute_size * grid_size;
        double diff_x = bot.x - pos.x;
        double scaled_height =
                chute.dimensions().height * (chute_size_screen / double(chute.dimensions().height));
        double scaled_width = chute.dimensions().width * (.33);
        double chute_angle =
                (atan(-(((grid_size * (diff_x / 2.0)) - (block_dims.width / 2.0)) + (scaled_width) / 2.0)
                      / ((scaled_height / 2.0) - (block_dims.height / 2.0)))
                 * 180) / M_PI;
        newpos.x += int(grid_size * ((diff_x) / 2));

        ge211::Transform transform_chute =
                ge211::Transform{}
                        .set_rotation(chute_angle)
                        .set_scale_x(.33)
                        .set_scale_y(chute_size_screen / double(chute.dimensions().height));
        if (model_.is_top(pos).x == 9 && model_.is_top(pos).y == 2) {
            newpos.y -= 0.33 * grid_size;
            set.add_sprite(chute, newpos, 2, transform_chute);
        } else {
            set.add_sprite(chute, newpos, 2, transform_chute);
        }
    }
}

// Adds ladders to random locations
void View::add_ladders(ge211::Sprite_set &set, View::Position pos, View::Position newpos) {
    set.add_sprite(ladder_sqr, newpos, 1);
    if (model_.is_top(pos).x != -1) {
        Position bot = model_.is_top(pos);
        double squared_ladder_dist = (pos.x - bot.x) * (pos.x - bot.x) + (pos.y - bot.y) * (pos.y - bot.y);
        double ladder_size = sqrt(squared_ladder_dist);
        double ladder_size_screen = ladder_size * grid_size;
        double diff_x = bot.x - pos.x;
        double scaled_height =
                ladder.dimensions().height * (ladder_size_screen / double(ladder.dimensions().height));
        double scaled_width = ladder.dimensions().width * (.04);
        double ladder_angle =
                (atan(-(((grid_size * (diff_x / 2.0)) - (block_dims.width / 2.0)) + (scaled_width) / 2.0)
                      / ((scaled_height / 2.0) - (block_dims.height / 2.0)))
                 * 180) / M_PI;
        newpos.x += int(grid_size * ((diff_x) / 2));

        ge211::Transform transform_ladder =
                ge211::Transform{}
                        .set_rotation(ladder_angle) //ladder_angle
                        .set_scale_x(.04)
                        .set_scale_y(ladder_size_screen / double(ladder.dimensions().height));
        if (model_.is_top(pos).x == 0 && model_.is_top(pos).y == 4){
            ge211::Transform transform_bad =
                    ge211::Transform{}
                            .set_rotation(55) //ladder_angle
                            .set_scale_x(.04)
                            .set_scale_y(ladder_size_screen / double(ladder.dimensions().height));
            newpos.y -= grid_size;
            set.add_sprite(ladder, newpos, 2, transform_bad);
        } else if (model_.is_top(pos).x == 6 && model_.is_top(pos).y == 3) {
            ge211::Transform transform_bad =
                    ge211::Transform{}
                            .set_rotation(75) //ladder_angle
                            .set_scale_x(.04)
                            .set_scale_y(ladder_size_screen / double(ladder.dimensions().height));
            newpos.y -= .5 * grid_size;
            set.add_sprite(ladder, newpos, 2, transform_bad);
        }  else if (model_.is_top(pos).x == 5 && model_.is_top(pos).y == 8) {
            newpos.y -= .5 * grid_size;
            newpos.x += .25 * grid_size;
            set.add_sprite(ladder, newpos, 2, transform_ladder);
        }
        else {
            set.add_sprite(ladder, newpos, 2, transform_ladder);
        }
    }
}

// Checks if the game is over, and if so, removes the losing player from the screen
void View::check_game_over(ge211::Sprite_set &set) {
    if (!model_.is_game_over()) { // if game is not over
        set.add_sprite(rplayer, center_circle(Player::red, board_to_screen(model_.get_player_pos(Player::red))),
                       3, ge211::Transform().set_scale(.07));
        set.add_sprite(bplayer, center_circle(Player::blue, board_to_screen(model_.get_player_pos(Player::blue))),
                       3,
                       ge211::Transform().set_scale(.06));
    } else { // if the game is over
        mixer_.pause_music();
        if (noise_done.empty()) {
            noise_done = mixer_.try_play_effect(win_sound_, 0.2);
        }
        ge211::Font sans75("sans.ttf", 75);
        ge211::Text_sprite::Builder winner_builder(sans75);
        if (model_.winner() == Player::red) {
            winner_builder << "WINNER:" << " Red";
        } else if (model_.winner() == Player::blue) {
            winner_builder << "WINNER:" << " Blue";
        } else {
            winner_builder << "WINNER:" << model_.winner();
        }
        winner_sprite_.reconfigure(winner_builder);
        set.add_sprite(winner_sprite_, {150, 325}, 3);
        if (model_.winner() == Player::red) {
            set.add_sprite(rplayer, center_circle(Player::red, board_to_screen(model_.get_player_pos(Player::red))),
                           3,
                           ge211::Transform().set_scale(.07));
        } else if (model_.winner() == Player::blue) {
            set.add_sprite(bplayer,
                           center_circle(Player::blue, board_to_screen(model_.get_player_pos(Player::blue))), 3,
                           ge211::Transform().set_scale(.06));
        }
    }
}

// Draws the information at the bottom of the screen (previous roll and current turn)
void View::draw_info(ge211::Sprite_set &sprites) {
    ge211::Font sans30("sans.ttf", 30);
    ge211::Text_sprite::Builder roll_builder(sans30);
    roll_builder << "Previous Roll:" << model_.get_roll();
    ge211::Text_sprite::Builder turn_builder(sans30);
    if (model_.get_turn() == Player::red) {
        turn_builder << "Turn:" << " Red";
    } else if (model_.get_turn() == Player::blue) {
        turn_builder << "Turn:" << " Blue";
    } else {
        turn_builder << "Turn:" << model_.get_turn();
    }
    turn_sprite_.reconfigure(turn_builder);
    roll_sprite_.reconfigure(roll_builder);
    sprites.add_sprite(roll_sprite_, {150, 750}, 3);
    sprites.add_sprite(turn_sprite_, {500, 750},3);
}

