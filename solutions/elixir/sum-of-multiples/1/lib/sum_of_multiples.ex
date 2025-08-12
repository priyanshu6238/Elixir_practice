defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit,[]) ,do: 0
  def to(limit, factors) do
   
      0..(length(factors) - 1)
      |> Enum.reduce(MapSet.new(), fn x, acc ->
        if Enum.at(factors,x)==0 do
        acc
        else
        
        multi(Enum.at(factors, x), limit, 1)
        |> MapSet.new()
        |> MapSet.union(acc)
        end
      end)
      |> MapSet.to_list()
      |> sum_of_list()
      

   
  
  end

  defp sum_of_list([]) , do: 0
  defp sum_of_list(list) do
  Enum.reduce(list ,0,fn x ,acc ->
  acc+ x
  
  end)
     

  end

  defp multi(n,a,c) when n*c>=a ,do: []
  defp multi(n,a,c) do

     [n*c | multi(n,a,c+1)]
  end
  
end
