defmodule Matrix do
  defstruct matrix: nil

  @doc """
  Convert an `input` string, with rows separated by newlines and values
  separated by single spaces, into a `Matrix` struct.
  """
  @spec from_string(input :: String.t()) :: %Matrix{}
  def from_string(input) do
  a= input
    |> String.split("\n") 
    |> Enum.reduce([], fn x ,acc ->
        x
        |> String.split(" ")
        |> Enum.map(fn x -> String.to_integer(x) end)
        |> then(fn x -> [x | acc ] end)
    end)
    |> Enum.reverse()
    IO.inspect(a)
    a
  end

  @doc """
  Write the `matrix` out as a string, with rows separated by newlines and
  values separated by single spaces.
  """
  @spec to_string(matrix :: %Matrix{}) :: String.t()
  def to_string(matrix) do
    matrix
    |> Enum.map(fn x -> Enum.join(x , " ") end)
    |> Enum.join("\n")
  end

  @doc """
  Given a `matrix`, return its rows as a list of lists of integers.
  """
  @spec rows(matrix :: %Matrix{}) :: list(list(integer))
  def rows(matrix) do
  matrix
   
  end

  @doc """
  Given a `matrix` and `index`, return the row at `index`.
  """
  @spec row(matrix :: %Matrix{}, index :: integer) :: list(integer)
  def row(matrix, index) do
  IO.inspect(matrix)
    Enum.at(matrix,index-1)
  end

  @doc """
  Given a `matrix`, return its columns as a list of lists of integers.
  """
  @spec columns(matrix :: %Matrix{}) :: list(list(integer))
  def columns(matrix) do
  matrix
    |> List.zip()
    |> Enum.map(fn x -> Tuple.to_list(x) end)
  end

  @doc """
  Given a `matrix` and `index`, return the column at `index`.
  """
  @spec column(matrix :: %Matrix{}, index :: integer) :: list(integer)
  def column(matrix, index) do
     matrix
     |> columns()
     |> then(fn x -> Enum.at(x, index-1) end)
    
  end
end
