defmodule AllYourBase do
  @doc """
  Given a number in input base, represented as a sequence of digits, converts it to output base,
  or returns an error tuple if either of the bases are less than 2
  """

  @spec convert(list, integer, integer) :: {:ok, list} | {:error, String.t()}
   
   def convert_to_decimal(digits,input_base) do 

    {a,b}= Enum.reduce(digits,{0,0} , fn x, {ans,p} ->
          IO.puts(ans)
          if x >=0  and ans >=0  and x< input_base do
          {ans + trunc(:math.pow(input_base, p))*x,p+1}
          else 
            {-1,p}
            end
     end)
     a
   end
   def convert_to(0,output_base) , do: []
   def convert_to(d, output_base) do
       r= rem(d,output_base)
       q= div(d,output_base)
      convert_to(q,output_base) ++ [r]
    end

         
  def convert(digits, input_base, output_base) do
  if input_base>=2 and output_base>=2 do
      decimal= convert_to_decimal(Enum.reverse(digits), input_base)
      IO.puts(decimal)
       if decimal >0  do
      {:ok ,convert_to(decimal, output_base)}
      else   
           if decimal == 0 do 
           {:ok , [0]}
           else 
            {:error , "all digits must be >= 0 and < input base"}
           end
        end
       else

          if input_base <2 do
             {:error , "input base must be >= 2"}
          else
             {:error, "output base must be >= 2"}
          end
       end
  end
end
