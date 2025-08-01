defmodule DNA do

  def encode_nucleotide(code_point) do
    cond do 
     ?\s==code_point ->0
     ?A==code_point ->1
      ?C==code_point ->2
       ?G==code_point ->4
        ?T==code_point ->8
    
    end
    
  end

  def decode_nucleotide(encoded_code) do
     cond do 
   encoded_code==0 ->?\s
     encoded_code==1 -> ?A
     encoded_code==2 -> ?C
      encoded_code==4 -> ?G
       encoded_code==8 -> ?T
    
    end
  end

  def encode_func([],res), do: res
  def encode_func([head| tail],res) do
    h=encode_nucleotide(head)
    encode_func(tail,<<res::bitstring,h::size(4)>>)  
  end
  def encode(dna) do
    encode_func(dna,<<>>)
    
  end
  def decode_func(<<>>,acc) , do: acc
  def decode_func(<<init :: size(4),rest :: bitstring>>,acc) do
    h=  acc ++ [decode_nucleotide(init)]  
     decode_func(rest,h)
      
  end
  def decode(dna) do
    decode_func(dna,[])
    
  end
end
