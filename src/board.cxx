#include "board.hxx"

static int const edge = 10;
using namespace ge211;

// Get rid of input
Board::Board()
        : dims_({edge,edge})
{
}

// Returns board dimensions
Board::Dimensions
Board::dimensions() const
{
    return dims_;
}

// Returns all positions in board
Board::Rectangle
Board::all_positions() const
{
    return Rectangle::from_top_left(the_origin, dims_);
}
