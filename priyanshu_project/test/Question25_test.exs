defmodule Question25_test do
  use ExUnit.Case

  test "Question_25 functions" do
    assert RemoteControlCar.new() == %RemoteControlCar{
             nickname: "none",
             battery_percentage: 100,
             distance_driven_in_meters: 0
           }

    assert RemoteControlCar.new("Racer") == %RemoteControlCar{
             nickname: "Racer",
             battery_percentage: 100,
             distance_driven_in_meters: 0
           }
  end
end
