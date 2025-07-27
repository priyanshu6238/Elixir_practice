defmodule Question26_test do
  use ExUnit.Case

  alias BoutiqueSuggestions

  test "get_combinations returns valid combinations" do
    tops = [
      %{base_color: "red", price: 30},
      %{base_color: "blue", price: 40}
    ]

    bottoms = [
      %{base_color: "green", price: 20},
      %{base_color: "yellow", price: 50}
    ]

    options = [maximum_price: 100]

    combinations = BoutiqueSuggestions.get_combinations(tops, bottoms, options)
    assert length(combinations) == 4

    assert Enum.all?(combinations, fn {top, bottom} ->
             top.base_color != bottom.base_color and top.price + bottom.price < 100
           end)
  end
end
