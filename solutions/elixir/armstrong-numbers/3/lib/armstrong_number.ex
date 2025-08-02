defmodule ArmstrongNumber do
  @moduledoc """
  Provides a way to validate whether or not a number is an Armstrong number
  """
  defp int_pow(base , exp) do
  Enum.reduce(1..exp , 1, fn _ ,acc -> 
      acc*base
  end)
  end
  
  defp cal(0 ,_len) , do: 0
  
  defp cal(number, len) do
     r=rem(number,10)
     d=div(number,10)
     cal(d,len) + int_pow(r,len)
  end
  
  @spec valid?(integer) :: boolean
  def valid?(number) do
     t= Integer.to_string(number) |> String.length()
     g=cal(number,t)
      if g==number do
        true
        else
        false
        end
     
  end
end
