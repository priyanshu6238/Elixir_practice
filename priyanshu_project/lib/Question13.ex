defmodule Username do

    def sanitize(username) do
      username
      |>Enum.flat_map(fn 
      ?ä -> 'ae'
     ?ö -> 'oe'
     ?ü -> 'ue'
     ?ß -> 'ss' 
    char -> [char] end)
      |>Enum.filter(fn acc->
        acc in (?a..?z ) or acc == ?_
      end)
    end
  end
  