defmodule Question24_test do
  use ExUnit.Case

  test "Question24_test" do
    assert Chessboard.rank_range() == 1..8
    assert Chessboard.file_range() == 65..72
    assert Chessboard.ranks() == [1, 2, 3, 4, 5, 6, 7, 8]
    assert Chessboard.files() == ["A", "B", "C", "D", "E", "F", "G", "H"]
  end
end
