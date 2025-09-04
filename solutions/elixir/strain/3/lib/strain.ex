defmodule Strain do
  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns true.

  Do not use `Enum.filter`.
  """
  @spec keep(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def keep([],_fun)  , do:  []
  def keep(list, fun) do
 
     Enum.reduce(0..length(list)-1 , [], fn x ,acc ->
       if fun.(Enum.at(list,x)) do
             acc ++ [Enum.at(list,x)]
       else
        acc

         end
     
     end)
  end

  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns false.

  Do not use `Enum.reject`.
  """
  @spec discard(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def discard(list, fun) do
     
     Enum.reduce(0..length(list)-1 , [], fn x ,acc ->
       if !fun.(Enum.at(list,x)) do
             acc ++ [Enum.at(list,x)]
       else
        acc

         end
     
     end)
  end
end
