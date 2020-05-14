#include <functional>
#include <map>
#include <iostream>

#include <spdlog/spdlog.h>
#include <imgui.h>
#include <imgui-SFML.h>
#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/System/Clock.hpp>
#include <SFML/Window/Event.hpp>
#include <SFML/Graphics/CircleShape.hpp>


#include <docopt/docopt.h>

#include <iostream>

// static constexpr auto USAGE =
//   R"(Naval Fate.

//     Usage:
//           naval_fate ship new <name>...
//           naval_fate ship <name> move <x> <y> [--speed=<kn>]
//           naval_fate ship shoot <x> <y>
//           naval_fate mine (set|remove) <x> <y> [--moored | --drifting]
//           naval_fate (-h | --help)
//           naval_fate --version
//  Options:
//           -h --help     Show this screen.
//           --version     Show version.
//           --speed=<kn>  Speed in knots [default: 10].
//           --moored      Moored (anchored) mine.
//           --drifting    Drifting mine.
// )";

int main([[maybe_unused]] int argc, [[maybe_unused]] const char **argv)
{
  // std::map<std::string, docopt::value> args = docopt::docopt(USAGE,
  //   { std::next(argv), std::next(argv, argc) },
  //   true,// show help if requested
  //   "Naval Fate 2.0");// version string

  // for (auto const &arg : args) {
  //   std::cout << arg.first << arg.second << std::endl;
  // }

  constexpr int window_width = 1640;
  constexpr int window_height = 1280;
  constexpr int frame_rate = 60;

  //Use the default logger (stdout, multi-threaded, colored)
  spdlog::info("Starting ImGUI + SFML");


  sf::RenderWindow window(sf::VideoMode(window_width, window_height), "ImGui + SFML = <3");
  window.setFramerateLimit(frame_rate);
  ImGui::SFML::Init(window);

  constexpr auto scale_factor = 4.0;
  ImGui::GetStyle().ScaleAllSizes(scale_factor);
  ImGui::GetIO().FontGlobalScale = scale_factor;

  std::array<bool, 13> state = {false};

  sf::Clock deltaClock;
  while (window.isOpen()) {
    sf::Event event = {};
    while (window.pollEvent(event)) {
      ImGui::SFML::ProcessEvent(event);

      if (event.type == sf::Event::Closed) {
        window.close();
      }
    }

    ImGui::SFML::Update(window, deltaClock.restart());


    ImGui::Begin("The Plan");
    size_t i = 0;
    for (const auto& step : { "0 : The Plan", "1 : Getting Started", "2 : Finding Errors as soon as possible", "3 : Stuff?", "4 : C++20 So Far", "5 : Reading SFML input States", "6 : Managing Game state", "7 : Making Our Game Testable", "8 : Making Game State Allocator Aware", "9 : Add Logging to Game Engine", "10 : Draw A Game Map", "11 : Dialog Trees", "12: Porting SFML to SDL" }) {
      ImGui::Checkbox(step, &state.at(i));
      i++;
    }
    ImGui::End();

    window.clear();
    ImGui::SFML::Render(window);
    window.display();
  }

  ImGui::SFML::Shutdown();

  return 0;
}
