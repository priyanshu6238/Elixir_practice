defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}

  """


  def func(numbers ,key, first ,last) when first > last  do 
  :not_found
  end
  def func(numbers,key,first,last) do
    mid= div(first+last, 2)
    if elem(numbers,mid) == key do
       {:ok ,mid}
    else
        if elem(numbers,mid) > key do
             func(numbers,key,first,  mid-1)
          else
            func(numbers,key ,mid+1 ,last)
          end

 end
  end
  def search({} ,key) , do: :not_found
  def search(numbers, key) do
     func(numbers, key, 0,tuple_size(numbers)-1)
     
  end
end
