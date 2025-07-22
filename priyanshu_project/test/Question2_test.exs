defmodule Question2_test_case_file do
  use ExUnit.Case

  test "Lasagna functions" do
    assert Lasagna.expected_minutes_in_oven() == 40
    assert Lasagna.remaining_minutes_in_oven(30) == 10
    assert Lasagna.preparation_time_in_minutes(3) == 6
    assert Lasagna.total_time_in_minutes(3, 10) == 16
    assert Lasagna.alarm() == "Ding!"
  end
end
