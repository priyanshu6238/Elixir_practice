defmodule Question38_test do
  use ExUnit.Case

  test "Climbing Stairs" do
    assert Solution.climb_stairs(2) == 2
    assert Solution.climb_stairs(3) == 3
    assert Solution.climb_stairs(4) == 5
    assert Solution.climb_stairs(5) == 8
    assert Solution.climb_stairs(6) == 13
  end
end
