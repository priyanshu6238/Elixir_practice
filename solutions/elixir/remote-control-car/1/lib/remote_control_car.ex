defmodule RemoteControlCar do
  @enforce_keys [:nickname]
  defstruct [:nickname, battery_percentage: 100, distance_driven_in_meters: 0 ]
  

  def new() do
    %RemoteControlCar{nickname: "none"}
  end

  def new(nickname) do
     %RemoteControlCar{nickname: nickname}
  end

  def display_distance(%RemoteControlCar{distance_driven_in_meters: distance}) do
  
    "#{distance} meters"
  end

  def display_battery(%RemoteControlCar{battery_percentage: battery}) do
   if battery !=0 ,do: 
    "Battery at #{battery}%" , else:  "Battery empty" 
  end

  def drive(%RemoteControlCar{distance_driven_in_meters: d,battery_percentage: b}=remote_car) do

     cond do
      (b >0) -> %{remote_car | distance_driven_in_meters: d+20 , 
      battery_percentage: b-1 }
      true -> remote_car
      end
     
     
  end
end
