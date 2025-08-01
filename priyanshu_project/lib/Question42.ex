defmodule Pratice do
  def substring(s) do
    for i <- 0..(String.length(s) - 1),
        j <- (i + 1)..String.length(s) do
      String.slice(s, i, j - i)
    end
  end
end
