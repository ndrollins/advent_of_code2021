defmodule Day2Test do
  use ExUnit.Case
  doctest Day2

@movement "forward 5
down 5
forward 8
up 3
down 8
forward 2"

  #test "sum of a list of numbers" do
      #assert Day2.adds([4, 3, 5]) == 12
  #end

  test "finds the forward navigation and depth, then multiples them" do
    assert Day2.navi2("./lib/day2_input.txt") == 1408487760
    assert Day2.navi("./lib/day2_test.txt") == 150
    assert Day2.navi2("./lib/day2_test.txt") == 900

  end
end
