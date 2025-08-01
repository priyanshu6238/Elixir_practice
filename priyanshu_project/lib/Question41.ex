defmodule Question41 do
  @spec unique_paths(m :: integer, n :: integer) :: integer

  def path(1, 1, map), do: {1, Map.put(map, {1, 1}, 1)}

  def path(m, n, map) do
    key = {m, n}

    case Map.get(map, key) do
      nil ->
        {a, map1} =
          if m - 1 > 0 do
            path(m - 1, n, map)
          else
            {0, map}
          end

        {b, map2} =
          if n - 1 > 0 do
            path(m, n - 1, map1)
          else
            {0, map1}
          end

        {a + b, Map.put(map2, key, a + b)}

      value ->
        {value, map}
    end
  end

  def unique_paths(m, n) do
    {a, _map} = path(m, n, %{})
    a
  end
end
