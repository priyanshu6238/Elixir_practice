defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
  sentence
  |> String.split([",","\n","\t","|",":" , "!" ,"?"," ","@","$","^","&","%","_","."])
  |> Enum.filter(fn x -> x != ""  end)
  |> Enum.map( fn x -> String.trim(x,"'") end)
  |> Enum.reduce(%{},fn x ,acc ->
         str= String.downcase(x)
        if  Map.has_key?(acc , str) do
             Map.put(acc, str,acc[str]+1)
        else
          Map.put(acc, str,1)
       end
  end)

  end
end
