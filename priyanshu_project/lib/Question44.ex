defmodule Question44 do
  def substring(s) do
    for i <- 0..(String.length(s) - 1),
        j <- (i + 1)..String.length(s) do
      String.slice(s, i, j - i)
    end
  end

  def is_plaidrome(s) do
    String.reverse(s) == s
  end

  def longest_palindrome(s) do
    {_a, b} =
      substring(s)
      |> Enum.reduce({"", []}, fn x, {acc, list} ->
        if is_plaidrome(x) and String.length(acc) < String.length(x) do
          IO.puts(x)
          {x, list ++ [x]}
        else
          {acc, list}
        end
      end)

    b
  end
end
