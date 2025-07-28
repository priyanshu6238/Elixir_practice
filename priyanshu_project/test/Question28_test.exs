defmodule Question28Test do
  use ExUnit.Case
  alias Two_Sum

  test "two_sum with valid input" do
    assert Two_Sum.two_sum([2, 7, 11, 15], 9) == [0, 1]
    assert Two_Sum.two_sum([3, 2, 4], 6) == [1, 2]
    assert Two_Sum.two_sum([3, 3], 6) == [0, 1]
    assert Two_Sum.two_sum([1, 2, 3, 4], 5) == [1, 2]
    assert Two_Sum.two_sum([5, 5, 11, 15], 10) == [0, 1]
  end
end
