defmodule Series do
  @doc """
  Finds the largest product of a given number of consecutive numbers in a given string of numbers.
  """
  @spec largest_product(String.t(), non_neg_integer) :: non_neg_integer
   def largest_product(number_string, size) when size <1 ,do: raise ArgumentError
  def largest_product(number_string, size) do
    Enum.reduce(0..String.length(number_string)-size,0, fn x , acc -> 
         a=Enum.reduce(x..(x+size)-1, 1, fn x , acc1 -> 
         acc1 *  String.to_integer(String.at(number_string,x))
         end )
         max(acc,a)
    end)
  end
end
