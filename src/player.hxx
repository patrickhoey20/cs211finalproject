#pragma once

#include <ge211.hxx>
#include <iostream>

// A player or lack thereof.
enum class Player
{
    red,
    blue,
    neither
};

// Returns the other player.
Player other_player(Player);

// Prints a player in a manner suitable for debugging.
std::ostream& operator<<(std::ostream&, Player);

struct player_obj
{

using Position = ge211::Posn<int>;
explicit player_obj(Player team, Position pos);
    Player color;
    Position position;
    int direction; // 1 if moving right, -1 if moving left
};


