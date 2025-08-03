defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count(~c"AATAA", ?A)
  4

  iex> NucleotideCount.count(~c"AATAA", ?T)
  1
  """
  @spec count(charlist(), char()) :: non_neg_integer()
  def count(strand, nucleotide) do
   Enum.reduce(0..length(strand)-1, 0, fn x, acc -> 
        if Enum.at(strand,x) == nucleotide do
             acc+1
        else 
           acc

         end
   end )
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram(~c"AATAA")
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram(charlist()) :: map()
  def histogram(strand) do
     if length(strand) != 0 do
     Enum.reduce(0..length(strand)-1 ,%{65 => 0, 84 => 0, 67 => 0, 71 => 0}, fn x ,acc -> 
         
          
              Map.put(acc, Enum.at(strand,x), Map.get(acc,Enum.at(strand,x))+1)
          
    end)
     else 
     %{65 => 0, 84 => 0, 67 => 0, 71 => 0}
     end
       
  end
end
