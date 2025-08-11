defmodule Anagram do

  defp map_convert(str) do
     0..String.length(str)-1
     |> Enum.reduce(%{}, fn x ,acc ->

       if Map.get(acc,String.downcase(String.at(str,x))) != nil do
              Map.put(acc, String.downcase(String.at(str,x)),Map.get(acc,String.downcase(String.at(str,x)))+1)
         else
              Map.put(acc,String.downcase(String.at(str,x)),1)
         end
         
     end)

    
  end

  defp check(a,b) do

    a==b
    
   end
     @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t(), [String.t()]) :: [String.t()]
  def match(base, candidates) do
    a=map_convert(base)
    
    Enum.reduce(0..length(candidates)-1, [] ,fn x ,acc ->
         if  String.downcase(Enum.at(candidates,x) ) == String.downcase(base) do
         acc
         else
           map_convert(Enum.at(candidates,x))
           |> check(a)
           |> case  do
             true ->  acc ++ [Enum.at(candidates,x)]
             _ ->  acc

             end

             end
           
    end)
    

    
    
    
    
   
    
      
   end

    


end
