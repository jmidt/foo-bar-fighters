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

static constexpr auto USAGE =
  R"(FooBar Fighters.
    Usage:
          FooBarFighters [options]

  Options:
          -h --help     Show this screen.
          --version     Show version.
          --width=<w>       Window width [default: 1800].
          --height=<h>      Window height [default: 1400].
          --scale=<s>       Scale factor for graphics [default: 4].
          --framerate=<fr>   Max Framerate [default: 60].
)";

int main(int argc, const char **argv)
{
  std::map<std::string, docopt::value> args = docopt::docopt(USAGE,
    { std::next(argv), std::next(argv, argc) },
    true,// show help if requested
    "FooBar Fighters v0.1");// version string

  for (auto const &arg : args) {
    if (arg.second.isString()) { spdlog::info("Parameter: {} = {}", arg.first, arg.second.asString()); }
  }

  const auto window_width = args["--width"].asLong();
  const auto window_height = args["--height"].asLong();
  const auto frame_rate = args["--framerate"].asLong();
  const auto scale = args["--scale"].asLong();

  if (window_width <= 0 || window_height <= 0 || frame_rate <= 0 || scale < 0) {
    spdlog::error("Command line parameters out of pounds.");
    for (auto const &arg : args) {
      if (arg.second.isString()) { spdlog::info("Parameter: {} = {}", arg.first, arg.second.asString()); }
    }
    abort();
  }

  //Use the default logger (stdout, multi-threaded, colored)
  spdlog::info("Starting ImGUI + SFML");


  sf::RenderWindow window(sf::VideoMode(static_cast<unsigned>(window_width), static_cast<unsigned>(window_height)), "ImGui + SFML = <3");
  window.setFramerateLimit(static_cast<unsigned>(frame_rate));
  ImGui::SFML::Init(window);

  const auto scale_factor = static_cast<float>(scale);
  ImGui::GetStyle().ScaleAllSizes(scale_factor);
  ImGui::GetIO().FontGlobalScale = scale_factor;

  constexpr std::array steps = { "The Plan",
    "Getting Started",
    "Finding Errors as soon as possible",
    "Handling Command Line Parameters",
    "C++20 So Far",
    "Reading SFML input States",
    "Managing Game state",
    "Making Our Game Testable",
    "Making Game State Allocator Aware",
    "Add Logging to Game Engine",
    "Draw A Game Map",
    "Dialog Trees",
    "Porting SFML to SDL" };

  std::array<bool, steps.size()> state = { false };


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

    for (size_t i = 0; const auto &step : steps) {
      ImGui::Checkbox(fmt::format("{} : {}", i, step).c_str(), &state.at(i));
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
