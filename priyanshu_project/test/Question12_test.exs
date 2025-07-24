defmodule Question12_test do
  use ExUnit.Case

  test "Question12_test functions" do
    assert HighScore.new() == %{}
    assert HighScore.add_player(%{}, "Alice", 100) == %{"Alice" => 100}
    assert HighScore.add_player(%{"Alice" => 100}, "Bob", 200) == %{"Alice" => 100, "Bob" => 200}
    assert HighScore.remove_player(%{"Alice" => 100, "Bob" => 200}, "Alice") == %{"Bob" => 200}

    assert HighScore.reset_score(%{"Alice" => 100, "Bob" => 200}, "Alice") == %{
             "Alice" => 0,
             "Bob" => 200
           }

    assert HighScore.update_score(%{"Alice" => 100, "Bob" => 200}, "Alice", 150) == %{
             "Alice" => 250,
             "Bob" => 200
           }

    assert HighScore.get_players(%{"Alice" => 100, "Bob" => 200}) == ["Alice", "Bob"]
  end
end
