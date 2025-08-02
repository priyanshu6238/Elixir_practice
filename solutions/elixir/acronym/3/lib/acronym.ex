defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
   {a,_b}= String.graphemes(string)
    |> Enum.reduce({"", false}, fn x , {s,bol} -> 
       if  String.match?(x, ~r/[A-Za-z]/) and bol==false   do
         {s <> String.upcase(x), true} 
       else 
          if String.match?(x, ~r/[A-Za-z]/) and bol==true do
            {s,true}
          else
             if x == "'" do
               {s,true}
               else
                {s,false}
                end
                 
           end   
        end
          
     end)
     a
  end
end
