defmodule IsbnVerifier do
  @doc """
    Checks if a string is a valid ISBN-10 identifier

    ## Examples

      iex> IsbnVerifier.isbn?("3-598-21507-X")
      true

      iex> IsbnVerifier.isbn?("3-598-2K507-0")
      false

  """
  @spec isbn?(String.t()) :: boolean
  
  def isbn?(isbn) do
   
  b=  String.graphemes(isbn)
    |> Enum.filter(&String.match?(&1, ~r/^[0-9A-Za-z]$/))

    if check1(b) == false do
        
       false

       else

    
       Enum.map( b,fn x ->
  case Integer.parse(x) do
    {num, ""} -> num  
    _ -> 10            
    end
end)
    |> check()

     end
  end

  defp check(list) do
     {x,y}=Enum.reduce(0..length(list)-1,{0,10}, fn x,{acc,val} ->
       {acc + Enum.at(list,x)*val,val-1}
     
     end)


     rem(x,11) == 0
  end

  defp check1(list) do
  
    if length(list) == 10 do
  Enum.reduce(0..length(list)-1 , true ,fn x ,acc ->
    if x != 9 && !String.match?(Enum.at(list,x), ~r/^\d$/) do
          acc and false

    else 
     if x== 9 && !String.match?(Enum.at(list,x), ~r/^\d$/) && Enum.at(list,x) != "X" do
       
        acc and false
        else
        acc
        end

    end
  
  end)

  else
      false

      end
end
  
end
