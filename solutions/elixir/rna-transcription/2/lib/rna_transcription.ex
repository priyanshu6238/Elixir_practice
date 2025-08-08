defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

    iex> RnaTranscription.to_rna(~c"ACTG")
    ~c"UGAC"
  """
  @spec to_rna([char]) :: [char]
  def to_rna([]) ,do: []
  def to_rna(dna) do
  IO.inspect(length(dna))
 Enum.reduce(0..length(dna)-1 ,[], fn x  ,acc ->
      a=  cond do
        Enum.at(dna,x) == ?G -> ?C
        Enum.at(dna,x) == ?C -> ?G
        Enum.at(dna,x) == ?T -> ?A
        Enum.at(dna,x) == ?A -> ?U  
        end
        acc ++ [a]
 end)
  end
end
