#include "player.hxx"

Player
other_player(Player player)
{
    switch (player) {
    case Player::red:
        return Player::blue;
    case Player::blue:
        return Player::red;
    default:
        return player;
    }
}

std::ostream&
operator<<(std::ostream& os, Player p)
{
    switch (p) {
    case Player::red:
        return os << "r";
    case Player::blue:
        return os << "b";
    default:
        return os << "_";
    }
}

// Call with {0,0} as intial pos or we just call with where it should start
player_obj::player_obj (Player team, Position pos)
    : color(team),
      // Update position when creating instance in model
      position(pos),
      direction(1)
{ }
