defmodule Isogram do
  @doc """
  Determines if a word or sentence is an isogram
  """
  @spec isogram?(String.t()) :: boolean
  def isogram?("") , do: true
  def isogram?(sentence) do
    Enum.reduce_while(0..(String.length(sentence)-1),{true,%{}},fn x , {acc,map} ->
         str1=(String.at(sentence,x))
        
         if (str1 == " ")  or  (str1 == "-")   do

          {:cont , {acc,map}}

         else
         str=String.upcase(String.at(sentence,x))
           if Map.has_key?(map,str) do
             
              {:halt , {false,map}}
           else

             {:cont, {acc, Map.put(map, str , 1)}}

           end

     end
    
    end)
    |> then(fn {x,_y} -> x end)
  end
end
