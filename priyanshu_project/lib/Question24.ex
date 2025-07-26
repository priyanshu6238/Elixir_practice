defmodule Chessboard do
  def rank_range do
    1..8
  end

  def file_range do
    65..72
  end

  def ranks do
    Enum.reduce(1..8, [], fn x, acc ->
      [x | acc]
    end)
    |> Enum.reverse()
  end

  def files do
    Enum.reduce(file_range(), [], fn x, acc ->
      [<<x>> | acc]
    end)
    |> Enum.reverse()
  end
end
