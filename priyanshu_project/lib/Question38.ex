defmodule Solution do
  @spec climb_stairs(n :: integer) :: integer
  def is_climb_stairs(0, map), do: {1, %{0 => 1}}
  def is_climb_stairs(n, map) when n < 0, do: {0, %{n => 0}}

  def is_climb_stairs(n, map) do
    h = Map.get(map, n)

    if h != nil do
      {h, map}
    else
      {a, map1} = is_climb_stairs(n - 1, map)
      {b, map2} = is_climb_stairs(n - 2, map1)
      {a + b, Map.put(map2, n, a + b)}
    end
  end

  def climb_stairs(n) do
    {a, b} = is_climb_stairs(n, %{})
    a
  end
end
