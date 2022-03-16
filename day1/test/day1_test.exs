defmodule Day1Test do
  use ExUnit.Case
    @input """
  199
  200
  208
  210
  200
  207
  240
  269
  260
  263
  """

  test "finds the number of times that the depth increases" do
    assert Day1.depth_increase_frequency(@input) == 7
  end
end
