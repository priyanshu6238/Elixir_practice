defmodule Question15_test do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "Question15_test case" do
    assert NameBadge.print(455,  "Mary M. Brown","MARKETING") == "[455] - Mary M. Brown - MARKETING"
    assert NameBadge.print(0, "John Doe", "SALES") == "[0] - John Doe - SALES"
  end
end