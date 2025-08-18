defmodule Triangle do
  @type kind :: :equilateral | :isosceles | :scalene

  @doc """
  Return the kind of triangle of a triangle with 'a', 'b' and 'c' as lengths.
  """
  @spec kind(number, number, number) :: {:ok, kind} | {:error, String.t()}
  def kind(a,b,c) when a<=0 or b<=0 or c<=0 , do: {:error, "all side lengths must be positive"}
  def kind(a,b,c) when ((a+b) <= c) or ((c+b) <= a) or ((a+c) <= b) ,do: {:error , "side lengths violate triangle inequality"}
  def kind(a, b, c) do
    if a == b and b == c do
         {:ok , :equilateral}
    else 
       if a==b or b==c or a==c do
           {:ok ,:isosceles}
       else 
           {:ok,:scalene}
       end
    end
  end
end
