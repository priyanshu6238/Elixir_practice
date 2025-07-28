defmodule Two_Sum do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    {_, result} =
      Enum.reduce_while(0..(length(nums) - 1), {%{}, []}, fn x, {map, _list} ->
        y = target - Enum.at(nums, x)

        if Map.has_key?(map, y) do
          {:halt, {map, [map[y], x]}}
        else
          map = Map.put(map, Enum.at(nums, x), x)
          {:cont, {map, []}}
        end
      end)

    result
  end
end
