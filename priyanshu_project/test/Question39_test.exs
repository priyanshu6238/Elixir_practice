defmodule Question39_test do
  use ExUnit.Case

  test "Max Area" do
    assert LucasNumbers.generate(3) == [2, 1, 3]
    assert LucasNumbers.generate(5) == [2, 1, 3, 4, 7]
  end
end
