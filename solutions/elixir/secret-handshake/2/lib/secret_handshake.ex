defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
@map %{
  0  => "wink",
  1 => "double blink",
  2=> "close your eyes",
  3=> "jump"
}
  
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
  bits = Enum.reverse(Integer.digits(code, 2))
  IO.inspect(bits)
  len = if length(bits) <=3 do
         length(bits) 
         else
          5
         end
    Enum.reduce(0..len-1,[] , fn x ,acc ->
         if Enum.at(bits,x) == 1 and x != 4 do
            acc ++ [@map[x]]
          else
          if Enum.at(bits,x) == 1 do
          Enum.reverse(acc)
               
          else
             acc
           end
          end
    
    end)
  end
end
