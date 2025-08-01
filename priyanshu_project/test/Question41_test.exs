defmodule Question41_test do
  use ExUnit.Case

  test "Unique Paths" do
    assert Question41.unique_paths(3, 2) == 3
    assert Question41.unique_paths(7, 3) == 28
    assert Question41.unique_paths(1, 1) == 1
    assert Question41.unique_paths(5, 5) == 70
  end
end
