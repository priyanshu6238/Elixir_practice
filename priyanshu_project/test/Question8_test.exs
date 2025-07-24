defmodule Question8_test do
  use ExUnit.Case

  test "Question_8 functions" do
    assert GuessingGame.compare(5, 5) == "Correct"
    assert GuessingGame.compare(5, 3) == "Too low"
    assert GuessingGame.compare(5, 7) == "Too high"
    assert GuessingGame.compare(5, 4) == "So close"
    assert GuessingGame.compare(5, 6) == "So close"
    assert GuessingGame.compare(5) == "Make a guess"
    assert GuessingGame.compare(5, :atom) == "Make a guess"
  end
end
