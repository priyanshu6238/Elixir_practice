defmodule ResistorColorDuo do
  @doc """
  Calculate a resistance value from two colors
  """
  @map %{
    black: 0, 
brown: 1, 
red: 2,
orange: 3,
yellow: 4,
green: 5,
blue: 6,
violet: 7,
grey: 8,
white: 9
  }
  @spec value(colors :: [atom]) :: integer

  def value(colors) do
    Enum.reduce(0..1 ,0,fn x ,acc ->
         acc*10 + @map[Enum.at(colors,x)]
    end)
    
  end
end
