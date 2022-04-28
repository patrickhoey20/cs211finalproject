#pragma once

#include "model.hxx"

class View
{
public:
    /// View dimensions will use `int` coordinates.
    using Dimensions = ge211::Dims<int>;

    /// View positions will use `int` coordinates.
    using Position = ge211::Posn<int>;

    /// View rectangles will use `int` coordinates.
    using Rectangle = ge211::Rect<int>;

    explicit View(Model const& model, ge211::Mixer& mixer);

    void draw(ge211::Sprite_set& set);

    Dimensions initial_window_dimensions() const;

    static std::string initial_window_title() ;

    static View::Position board_to_screen(Model::Position pos);
    void draw_info(ge211::Sprite_set& sprites);

    ge211::Sound_effect_handle noise_done;


private:
    Model const& model_;
    ge211::geometry::Dims<int> block_dims;

    // Text
    ge211::Text_sprite turn_sprite_;
    ge211::Text_sprite roll_sprite_;
    ge211::Text_sprite winner_sprite_;

    // Visuals
    ge211::sprites::Rectangle_sprite square_sprite;
    ge211::sprites::Image_sprite rplayer;
    ge211::sprites::Image_sprite bplayer;
    ge211::sprites::Rectangle_sprite chute_sqr;
    ge211::sprites::Rectangle_sprite ladder_sqr;
    ge211::sprites::Image_sprite chute;
    ge211::sprites::Image_sprite ladder;

    // Sound
    ge211::Mixer& mixer_;
    ge211::Music_track bg_music_;
    ge211::Sound_effect ladder_sound_;
    ge211::Sound_effect chute_sound_;
    ge211::Sound_effect win_sound_;

    void load_audio_();

    // Position helper
    static Position center_circle(Player player, Position pos);

    void chute_ladder_sounds();

    void add_board_elements(ge211::Sprite_set &sprites);

    void add_chutes(ge211::Sprite_set &set, Position pos, Position newpos);

    void add_ladders(ge211::Sprite_set &set, Position pos, Position newpos);

    void check_game_over(ge211::Sprite_set &set);

};
