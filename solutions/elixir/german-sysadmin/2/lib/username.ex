defmodule Username do
  def func(char) do
   case char do
   ?ä -> 'ae' 
   ?ö -> 'oe'
   ?ü -> 'ue'
   ?ß -> 'ss'
    _ ->  [char]
       end
       end
  
  def sanitize(username) do
    username
    |>Enum.flat_map(&func/1)
    |>Enum.filter(fn acc->
      acc in (?a..?z ) or acc == ?_
    end)
  end
end
