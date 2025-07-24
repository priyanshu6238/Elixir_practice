defmodule Question21_test do
  use ExUnit.Case

  test "Question21_test functions" do
    assert BoutiqueInventory.sort_by_price([
             %{price: 65, name: "Maxi Brown Dress", quantity_by_size: %{}},
             %{price: 50, name: "Red Short Skirt", quantity_by_size: %{}},
             %{price: 50, name: "Black Short Skirt", quantity_by_size: %{}},
             %{price: 20, name: "Bamboo Socks Cats", quantity_by_size: %{}}
           ]) == [
             %{price: 20, name: "Bamboo Socks Cats", quantity_by_size: %{}},
             %{price: 50, name: "Red Short Skirt", quantity_by_size: %{}},
             %{price: 50, name: "Black Short Skirt", quantity_by_size: %{}},
             %{price: 65, name: "Maxi Brown Dress", quantity_by_size: %{}}
           ]
  end
end
