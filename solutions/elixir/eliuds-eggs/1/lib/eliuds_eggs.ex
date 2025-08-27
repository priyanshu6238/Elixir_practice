defmodule EliudsEggs do
  @doc """
  Given the number, count the number of eggs.
  """
  @spec egg_count(number :: integer()) :: non_neg_integer()
  def egg_count(number) do
  Integer.digits(number,2)
  |>Enum.filter(fn x -> x==1 end )
  |> then(fn x -> length(x) end )
  end
end
