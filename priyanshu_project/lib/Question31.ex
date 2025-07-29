defmodule Solution31 do
  @spec is_palindrome(x :: integer) :: boolean

  def is_palindrome(x) do
    p = Integer.to_string(x)

    s = String.reverse(p)
    IO.inspect(s, label: "number")
    s == p
  end
end
