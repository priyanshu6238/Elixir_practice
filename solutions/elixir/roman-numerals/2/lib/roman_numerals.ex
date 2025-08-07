defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
 @roman [
  {1000,"M"},
  {900,"CM"},
  {500,"D"},
  {400,"CD"},
  {100,"C"},
  {90,"XC"},
  {50,"L"},
  {40,"XL"},
  {10,"X"},
  {9,"IX"},
  {5,"V"},
  {4,"IV"},
  {1,"I"}
 ]
 defp func(0,_map,s) , do: s
  defp func(number,[{value,key} | _]=map, s) when number >= value do
      func(number-value,map,s <> key)
  end
  defp func(number,[{_value,_key} | last] ,s) do
       func(number, last, s)
  end
   
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
     func(number, @roman, "")
  end
end
