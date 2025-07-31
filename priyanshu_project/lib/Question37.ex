defmodule Questtion37 do
  @spec max_area(height :: [integer]) :: integer
  def max_area(height) do
    {{_a, _b}, val} =
      Enum.reduce_while(height, {{0, length(height) - 1}, 0}, fn x, {{l, r}, val} ->
        y = max(min(Enum.at(height, l), Enum.at(height, r)) * (r - l), val)

        if l < r do
          if Enum.at(height, l) <= Enum.at(height, r) do
            IO.inspect(val, label: "left")
            {:cont, {{l + 1, r}, y}}
          else
            IO.inspect(val, label: "right")
            {:cont, {{l, r - 1}, y}}
          end
        else
          {:halt, {{l, r}, y}}
        end
      end)

    val
  end
end
