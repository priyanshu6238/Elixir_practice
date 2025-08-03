defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(n) when n<=0 or (not is_integer(n)) , do: raise FunctionClauseError
  def calc(1) , do: 0
  def calc(input)  do
    if rem(input,2)==0 do
        calc(div(input,2))+1
    else
       calc(input*3+1)+1
    end
   end
end
