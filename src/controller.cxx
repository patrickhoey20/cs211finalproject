#include "controller.hxx"

Controller::Controller()
        : view_(model_, mixer())
{ }

// Defines actions taken when user hits space bar (to play a move)
void
Controller::on_key(ge211::Key key)
{
    if (key == ge211::Key::code(' ')) {
        // Display dice roll
        view_.noise_done = {};
        model_.play_move();
    }

}

View::Dimensions
Controller::initial_window_dimensions() const
{
    return view_.initial_window_dimensions();
}

std::string
Controller::initial_window_title() const
{
    return view_.initial_window_title();
}


void
Controller::draw(ge211::Sprite_set& set)
{
    view_.draw(set);
}
