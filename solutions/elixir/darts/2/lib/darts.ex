defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  
  def score({x, y}) do

  d= :math.sqrt(abs(x*x) + abs(y*y) )
  cond do
    5*3.14 <d*3.14  and  d*3.14 <= 3.14*10  -> 1
      1*3.14 <d* 3.14 and  d* 3.14 <= 5*3.14 -> 5
          d* 3.14 <= 1*3.14  -> 10

       true -> 0
    end
  end
  end
