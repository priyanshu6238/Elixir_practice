defmodule Proverb do
  @doc """
  Generate a proverb from a list of strings.
  """
 
  
  @spec recite(strings :: [String.t()]) :: String.t()
  def recite([]) , do: ""
  def recite(list) when length(list)==1 do "And all for the want of a #{Enum.at(list,0)}.\n" end
  def recite(strings) do
   strings
   |> genrate()
   |>Enum.reverse()
   |> then( fn x -> x ++ ["And all for the want of a #{Enum.at(strings,0)}.\n"] end)
   |>Enum.join("\n")
   


 end
  
defp genrate(strings) do
length(strings)-1..1
   |> Enum.reduce([] ,fn x , acc ->
     acc ++  ["For want of a #{Enum.at(strings,x-1)} the #{Enum.at(strings,x)} was lost."]
   
   end)
 

end
  end

