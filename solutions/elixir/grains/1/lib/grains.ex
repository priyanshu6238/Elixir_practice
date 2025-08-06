defmodule Grains do
  @doc """
  Calculate two to the power of the input minus one.
  """
  @spec square(pos_integer()) :: {:ok, pos_integer()} | {:error, String.t()}
  def square(n) when n<=0 or n>64 , do: {:error,"The requested square must be between 1 and 64 (inclusive)" }
  def square(number) do
   {:ok , :math.pow(2,number-1) |> trunc()}

  
  end

  @doc """
  Adds square of each number from 1 to 64.
  """
  @spec total :: {:ok, pos_integer()}
  def total do
    {:ok,(:math.pow(2,64) |> trunc()) -1 }
  end
end
