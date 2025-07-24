defmodule HighScore do
  @moduledoc """
  A module to manage high scores for players.
  """

  def new() do
    %{}
  end

  def add_player(scores, name, score \\ 0) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Enum.reduce_while(scores, %{}, fn {key, value}, acc ->
      case key == name do
        true -> {:cont, acc}
        false -> {:cont, add_player(acc, key, value)}
      end
    end)
  end

  def reset_score(scores, name) do
    Enum.reduce(scores, %{}, fn {key, value}, acc ->
      if name == key do
        Map.put(acc, key, 0)
      else
        Map.put(acc, key, value)
      end
    end)
    |> Map.put_new(name, 0)
  end

  def update_score(scores, name, score) do
    Enum.reduce(scores, scores, fn {key, value}, acc ->
      if name == key and value < score do
        Map.put(acc, key, score + value)
      else
        acc
      end
    end)
    |> Map.put_new(name, score)
  end

  def get_players(scores) do
    Enum.reduce(scores, [], fn {key, _value}, acc ->
      acc ++ [key]
    end)
  end
end
