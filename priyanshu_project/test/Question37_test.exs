defmodule Questtion37Test do
  use ExUnit.Case
  doctest Questtion37

  test "max_area with example heights" do
    heights = [1, 8, 6, 2, 5, 4, 8, 3, 7]
    assert Questtion37.max_area(heights) == 49
  end

  test "max_area with single height" do
    heights = [1]
    assert Questtion37.max_area(heights) == 0
  end

  test "max_area with two heights" do
    heights = [1, 2]
    assert Questtion37.max_area(heights) == 1
  end

  test "max_area with decreasing heights" do
    heights = [5, 4, 3, 2, 1]
    assert Questtion37.max_area(heights) == 6
  end

  test "max_area with increasing heights" do
    heights = [1, 2, 3, 4, 5]
    assert Questtion37.max_area(heights) == 6
  end
end
