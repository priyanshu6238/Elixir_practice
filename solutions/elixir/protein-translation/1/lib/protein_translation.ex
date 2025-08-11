defmodule ProteinTranslation do

  @map %{
    "UGU" => "Cysteine",
 "UGC" => "Cysteine",
  "UUA" => "Leucine",
  "UUG" => "Leucine",
  "AUG" => "Methionine",
  "UUU" => "Phenylalanine",
  "UUC" => "Phenylalanine",
  "UCU" => "Serine",
  "UCC" => "Serine",
  "UCA" => "Serine",
  "UCG" => "Serine",
  "UGG" => "Tryptophan",
  "UAU" => "Tyrosine",
  "UAC" => "Tyrosine",
  "UAA" => "STOP",
  "UAG" => "STOP",
  "UGA" => "STOP",
  }
  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """
  
  @spec of_rna(String.t()) :: {:ok, list(String.t())} | {:error, String.t()}
  def of_rna("") ,do: {:ok,[]}
  def of_rna(rna) do
 rna
   |> codon_creation_rna()
   |> do_translate_rna([])
   
    end

    def codon_creation_rna(codon) do
       codon
       |> String.graphemes()
       |> Enum.chunk_every(3)
       |> Enum.map(fn x -> Enum.join(x,"") end)
       
    end
    def do_translate_rna([],acc) , do: {:ok,acc}
    def do_translate_rna([head | tail] =p, acc) do

       case Map.get(@map , head) do
        nil -> {:error , "invalid RNA"}
        "STOP" -> {:ok , acc}
        value -> do_translate_rna(tail,  acc ++ [value])
       end

    end
    
  
  @doc """
  Given a codon, return the corresponding protein

  UGU -> Cysteine
  UGC -> Cysteine
  UUA -> Leucine
  UUG -> Leucine
  AUG -> Methionine
  UUU -> Phenylalanine
  UUC -> Phenylalanine
  UCU -> Serine
  UCC -> Serine
  UCA -> Serine
  UCG -> Serine
  UGG -> Tryptophan
  UAU -> Tyrosine
  UAC -> Tyrosine
  UAA -> STOP
  UAG -> STOP
  UGA -> STOP
  """

  @map %{
    "UGU" => "Cysteine",
 "UGC" => "Cysteine",
  "UUA" => "Leucine",
  "UUG" => "Leucine",
  "AUG" => "Methionine",
  "UUU" => "Phenylalanine",
  "UUC" => "Phenylalanine",
  "UCU" => "Serine",
  "UCC" => "Serine",
  "UCA" => "Serine",
  "UCG" => "Serine",
  "UGG" => "Tryptophan",
  "UAU" => "Tyrosine",
  "UAC" => "Tyrosine",
  "UAA" => "STOP",
  "UAG" => "STOP",
  "UGA" => "STOP",
  }
  @spec of_codon(String.t()) :: {:ok, String.t()} | {:error, String.t()}
  def of_codon("") , do: {:ok, [] }
  def of_codon(codon) do


   codon
   |> codon_creation()
   |> do_translate("")
   
    end

    def codon_creation(codon) do
       codon
       |> String.graphemes()
       |> Enum.chunk_every(3)
       |> Enum.map(fn x -> Enum.join(x,"") end)
       
    end
    def do_translate([],acc) , do: {:ok,acc}
    def do_translate([head | tail] =p, acc) do
       case Map.get(@map , head) do
        nil -> {:error , "invalid codon"}
        "STOP" -> {:ok , "STOP" <> acc}
        value -> do_translate(tail,  value <> acc )
       end

    end
end
