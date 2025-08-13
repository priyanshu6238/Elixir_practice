defmodule PerfectNumbers do
  @doc """
  Determine the aliquot sum of the given `number`, by summing all the factors
  of `number`, aside from `number` itself.

  Based on this sum, classify the number as:

  :perfect if the aliquot sum is equal to `number`
  :abundant if the aliquot sum is greater than `number`
  :deficient if the aliquot sum is less than `number`
  """
  @spec classify(number :: integer) :: {:ok, atom} | {:error, String.t()}
  def classify(num) when num<1 ,do: {:error,"Classification is only possible for natural numbers."}
  
  def classify(number) do
    number
    |> factor_sum()
    |> check(number)
    
  end


defp check(sum,num) do
  cond do
  sum == num -> {:ok ,:perfect}
  sum > num -> {:ok,:abundant}
  sum < num -> {:ok, :deficient}
  end

end
defp factor_sum(1) ,do: 0
  defp factor_sum(num) do

  Enum.reduce(1..num-1 , 0, fn x ,acc -> 
     if rem(num,x) == 0 do
        acc+ x
     else 
       acc 

     end
  end)

  end
end
