defmodule Gigasecond do
  @doc """
  Calculate a date one billion seconds after an input date.
  """
  @spec from({{pos_integer, pos_integer, pos_integer}, {pos_integer, pos_integer, pos_integer}}) ::
          {{pos_integer, pos_integer, pos_integer}, {pos_integer, pos_integer, pos_integer}}
  def from({{year, month, day}, {hours, minutes, seconds}}) do

  start = NaiveDateTime.new!(year,month, day, hours, minutes,seconds)

  giga = NaiveDateTime.add(start, 1_000_000_000, :second)

  {{giga.year,giga.month,giga.day} , {giga.hour, giga.minute,giga.second}}
  
  
  end
end
