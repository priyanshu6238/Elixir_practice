defmodule Lasagna do
  def expected_minutes_in_oven() do
  40
  end

  def remaining_minutes_in_oven(n) do
      40-n
  end

  def preparation_time_in_minutes(n) do
      n*2
   end

  def total_time_in_minutes(a,b) do
     a*2+b
  end

  def alarm() do
    "Ding!"
  end
end
