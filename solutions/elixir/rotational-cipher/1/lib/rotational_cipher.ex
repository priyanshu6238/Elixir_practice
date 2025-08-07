defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
   
  def rotate(text, shift) do
      k=String.downcase(text)
     d= Enum.reduce(0..(String.length(text)-1 ), "", fn x ,acc ->
     i=  String.to_charlist(String.at(text,x)) |> hd()
        if  i in ?a..?z do
          a= String.at(text,x)|> String.to_charlist() |> hd() 
           b=rem(a+shift-97, 26) + 97       
           acc <> <<b>> 
           else
             if i in ?A..?Z do
             a= String.at(text,x)|> String.to_charlist() |> hd() 
           b=rem(a+shift-65, 26) + 65     
           acc <> <<b>> 
           else  
             acc <> String.at(text,x)
             end
           end
      end)
      
      d
  end
end
