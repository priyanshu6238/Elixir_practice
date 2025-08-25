defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """

  def compare([],[]) , do: :equal
  def compare([],_a) , do: :sublist
  def compare(_a, []) , do: :superlist
  def compare(a, b) do
   
     cond do 
     a==b -> :equal
     sublist(a,b) -> :superlist
     sublist(b,a)-> :sublist
     true -> :unequal
     end
  end

  defp sublist(a,b) do
       Enum.chunk_every(a,length(b) , 1, :discard)
       |> Enum.any?( fn x -> x===b end)
       end
end
