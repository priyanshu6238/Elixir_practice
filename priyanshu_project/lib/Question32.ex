defmodule Question32 do
  @spec length_of_longest_substring(s :: String.t()) :: integer
  def length_of_longest_substring(s) do
    if String.length(s) == 0, do: 0, else: is_length_of_longest_substring(s)
  end

  def is_length_of_longest_substring(s) do
    len = String.length(s)

    {_, {_, b}} =
      Enum.reduce(0..(len - 1), {%{}, {0, 0}}, fn x, {map, {init, maxi}} ->
        pos = String.at(s, x)

        {init, maxi} =
          if Map.has_key?(map, pos) and init <= map[pos] do
            k = map[pos]
            m = max(maxi, x - map[pos])

            {k + 1, m}
          else
            m = max(maxi, x - init + 1)

            {init, m}
          end

        map = Map.put(map, String.at(s, x), x)
        {map, {init, maxi}}
      end)

    b
  end
end
