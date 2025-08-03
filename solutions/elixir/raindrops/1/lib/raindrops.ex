defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t()
  def  func(x) do
    case x do
      3 -> "Pling"
      5 -> "Plang"
      7 -> "Plong"
    end
  end
  def convert(number) do

    b=[3,5,7]
   s=  Enum.reduce(b,"", fn x ,acc ->
       if rem(number,x) ==0 do
          acc <> func(x)
        else
           acc
        end
    
    end)
    if s=="" do
        Integer.to_string(number)
    else
         s
    end
  end
end
