defmodule Scrabble do
  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t()) :: non_neg_integer
  
  def score(word) do
    g=String.upcase(word)
   Enum.reduce(0..String.length(word)-1, 0 ,fn x ,acc -> 
      number=cond do
       String.at(g,x) in ["A" ,"E","I","O","L","N","R","S","T","U"] ->1
       String.at(g,x) in ["D","G"] -> 2
       String.at(g,x) in ["B","C","M","P"] -> 3
       String.at(g,x) in ["F","V","W","Y","H"] -> 4
       String.at(g,x) in ["K"] -> 5
       String.at(g,x) in ["J","X"] -> 8
       String.at(g,x) in ["Q","Z"] -> 10
       true -> 0
       end
         acc+number
   end)
    
  
  end
end
