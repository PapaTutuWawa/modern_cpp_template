#define CATCH_CONFIG_MAIN
#include "catch.hpp"

unsigned int example(unsigned int a, unsigned int b) {
  return a + b;
}

TEST_CASE("Stupid test", "[doggo]") {
  REQUIRE(example(1, 1) == 2);
}
