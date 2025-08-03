defmodule Hamming do
  @doc """
  Returns number of differences between two strands of DNA, known as the Hamming Distance.

  ## Examples

  iex> Hamming.hamming_distance(~c"AAGTCATA", ~c"TAGCGATC")
  {:ok, 4}
  """
  @spec hamming_distance([char], [char]) :: {:ok, non_neg_integer} | {:error, String.t()}

  def hamming_distance("" ,"") , do: {:ok,0}
  def hamming_distance(strand1, strand2) do
   if length(strand1) != length(strand2) do
     {:error , "strands must be of equal length"} 
   else 
        a= Enum.reduce(0..length(strand1) , 0 , fn x ,acc -> 
          if Enum.at(strand1 , x) != Enum.at(strand2, x) do
               acc+1
           else
               acc
          end
     
           end)  
      {:ok ,a}
   end
  end
end
