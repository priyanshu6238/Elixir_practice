defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "AABBBCCCC" => "2A3B4C"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "2A3B4C" => "AABBBCCCC"
  """
  @spec encode(String.t()) :: String.t()
  def encode("") , do: ""
  def encode(string) do
  
     
 {a,b,c} =   Enum.reduce(0..String.length(string)-1, {"",String.at(string,0),0},fn x,{init,acc,count} ->

           if acc == String.at(string,x) do
               {init,acc,count+1}
            else
          
                if count >=2 do
               {init <> "#{count}" <> acc,String.at(string,x),1}
               else
                {init <> acc,String.at(string,x),1}
                 end
               
             end
             
       end)
    
     if c>1  do
      a <> "#{c}" <> b
      else 
       a <> b
       end
       
  end

  @spec decode(String.t()) :: String.t()
  def decode("") , do: ""
  def decode(string) do

      {s,_p}=Enum.reduce(0..String.length(string)-1, {"",""} , fn x , {acc,no} -> 
               if  Regex.match?(~r/^\d+$/ , String.at(string,x)) == true do
                    {acc, no <>String.at(string,x) }
                else
                    if String.length(no) != 0 and  String.to_integer(no)>1 do
                    str=String.at(string , x)
                    b= Enum.reduce(0..String.to_integer(no)-1, "", fn x ,ac ->
                          ac <> str
                     end)
                     {acc <> b, ""}

                     else 

                        { acc <>  String.at(string,x) , no}


                     end


                  end
                   

      end)
      s
  
  end
end
