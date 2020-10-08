#include "computer_interface.h"

#include <iostream>


computer_interface_t::computer_interface_t() :
  win_counter{0},
  lose_counter{0},
  tie_counter{0} {}


void computer_interface_t::on_win() {
  ++win_counter;
}


void computer_interface_t::on_lose() {
  ++lose_counter;
}


void computer_interface_t::on_draw() {
  ++tie_counter;
}


void computer_interface_t::print_stat() const {
  std::cout << "Wins:  " << win_counter << std::endl;
  std::cout << "Loses: " << lose_counter << std::endl;
  std::cout << "Ties:  " << tie_counter << std::endl;
  std::cout << std::endl;
}