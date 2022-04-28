#pragma once

#include "player.hxx"
#include "board.hxx"

#include <ge211.hxx>
#include <cstdlib>
#include <ctime>
#include <iostream>
struct special {

    /// Model positions will use `int` coordinates, as board positions do.
    using Position = Board::Position;

    /// Model rectangles will use `int` coordinates, as board rectangles do.
    using Rectangle = Board::Rectangle;
    special(std::string str, Position start, Position end);
    std::string  type;
    Position top;
    Position bottom;
};

class Model
{
public:


    /// Model positions will use `int` coordinates, as board positions do.
    using Position = Board::Position;

    /// Model rectangles will use `int` coordinates, as board rectangles do.
    using Rectangle = Board::Rectangle;


    Model();

    /// Returns a rectangle containing all the positions of the board.
    /// This can be used to iterate over the positions.
    Rectangle board() const;

    int get_roll() const;
    Player get_turn() const;

    /// Returns whether the game is finished. This is true when neither
    /// player can move.
    bool is_game_over() const;

    /// Returns the current turn, or `Player::neither` if the game is
    /// over.
    Player turn() const
    { return turn_; }

    /// Returns the winner, or `Player::neither` if there is no winner
    /// (either because the game isn't over, or because it's a draw).
    Player winner() const
    { return winner_; }

    void play_move();

    ge211::Posn<int> get_player_pos(Player player) const;

    bool is_chute(Position pos) const;
    bool is_ladder(Position pos) const;


    Model::Position is_top(Position pos) const;
    bool is_laddered() const;
    bool is_chuted() const;

    friend struct Test_access;

private:
    Player turn_;
    Player winner_;
    Board board_;
    int roll_;
    player_obj bplayer_;
    player_obj rplayer_;
    bool laddered_;
    bool chuted_;
    std::vector<std::vector<std::vector<Position>>> possible_chute_positions_;
    std::vector<std::vector<std::vector<Position>>> possible_ladder_positions_;
    std::vector<special> chutes_;
    std::vector<special> ladders_;

    void set_game_over_();
    void advance_position(int roll);
    void check_ladder();
    void check_chute();

    // FOR TESTING
    void set_chute(Position top, Position bot);
    void set_ladder(Position top, Position bot);
};
