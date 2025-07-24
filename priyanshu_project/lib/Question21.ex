defmodule BoutiqueInventory do
  def sort_by_price(inventory) do
    Enum.sort_by(inventory, fn map -> map.price end)
  end

  def with_missing_price(inventory) do
    Enum.filter(inventory, fn x -> x.price == nil end)
  end

  def update_names(inventory, old_word, new_word) do
    Enum.map(inventory, fn item ->
      update = String.replace(item.name, old_word, new_word)
      %{item | name: update}
    end)
  end

  def increase_quantity(item, count) do
    map = item[:quantity_by_size]

    j =
      Enum.reduce(map, %{}, fn {key, value}, acc ->
        Map.put(acc, key, value + count)
      end)

    Map.put(item, :quantity_by_size, j)
  end

  def total_quantity(item) do
    map = item[:quantity_by_size]

    j =
      Enum.reduce(map, 0, fn {key, value}, acc ->
        acc = acc + value
      end)
  end
end
