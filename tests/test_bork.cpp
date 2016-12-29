#define CATCH_CONFIG_MAIN
#include "catch.hpp"

TEST_CASE("DOES IT BORK", "[BORK]") {
  REQUIRE("bork" == "borkf");
}
