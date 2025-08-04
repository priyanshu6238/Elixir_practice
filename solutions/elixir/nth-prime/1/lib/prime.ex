defmodule Prime do
  @doc """
  Generates the nth prime.
  """
  @spec nth(non_neg_integer) :: non_neg_integer
  def is_prime(n) when n < 2, do: false
  def is_prime(2), do: true
  def is_prime(3), do: true

  def is_prime(n) do
    Enum.all?(2..(:math.sqrt(n) |> trunc()), fn x -> rem(n, x) != 0 end)
  end

  def p(num, div, count) do
    if is_prime(div) and count + 1 == num do
      div
    else
      if is_prime(div) do
        p(num, div + 1, count + 1)
      else
        p(num, div + 1, count)
      end
    end
  end
def nth(n) when n<=0  do
raise FunctionClauseError
end
  def nth(count) do
    p(count, 2, 0)
  end
end
