defmodule PascalsTriangle do
  @doc """
  Calculates the rows of a pascal triangle
  with the given height
  """
  @spec rows(integer) :: [[integer]]
  def rows(num) do
    func(num,[] ,1)
  end

  defp func(num,_list,1) do

    func(num,[[1]] , 2)
  end
  defp func(num,list,i) when i > num do
    list
  end

   defp func(num,_list,2) do

    func(num,[[1], [1, 1]] , 3)
  end

  defp func(num,list,i) do
  k=Enum.reduce(0..length(Enum.at(list,i-2))-2, [] , fn x , acc ->
      acc ++ [Enum.at(Enum.at(list,i-2),x) + Enum.at(Enum.at(list,i-2),x+1)]
      
  end)
   l= [1] ++  k ++ [1]
   func(num, list ++ [l] , i+1)

   end
end
