defmodule Pangram do
  @doc """
  Determines if a word or sentence is a pangram.
  A pangram is a sentence using every letter of the alphabet at least once.

  Returns a boolean.

    ## Examples

      iex> Pangram.pangram?("the quick brown fox jumps over the lazy dog")
      true

  """

  @spec pangram?(String.t()) :: boolean
  def pangram?("") , do: false
  def pangram?(sentence) do
      l=String.upcase(sentence) 
    map= Enum.reduce(0..String.length(l)-1, %{} , fn x , acc->
            y= String.at(l,x)
            if Map.get(acc,y) == nil and Regex.match?(~r/^[A-Z]$/, y)  do
              Map.put(acc,y,1)
            else 
               acc
               end
     
     
     end)
     if map_size(map) == 26 do
          true
       else 
        false
        end
  end
end
