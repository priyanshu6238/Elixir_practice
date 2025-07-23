defmodule WineCellar do
    def explain_colors do
      [white: "Fermented without skin contact." , red: "Fermented with skin contact using dark-colored grapes.",rose: "Fermented with some skin contact, but not enough to qualify as a red wine."]
    end
  
    def filter(cellar, color, opts \\ []) do
     wines= Enum.reduce(cellar,[],fn {x,y},acc->
       if x==color  do
          acc ++ [y]
       else
         acc
         end
      end)
  
     cond  do
        Keyword.has_key?(opts, :year) and Keyword.has_key?(opts, :country) -> 
        wines |>filter_by_year(opts[:year])|>
        filter_by_country(opts[:country])
        Keyword.has_key?(opts,:year)  -> filter_by_year(wines,opts[:year])
        Keyword.has_key?(opts,:country)  -> filter_by_country(wines,opts[:country])
  
        true -> wines
        end
        
         
  
       
    end
  
    # The functions below do not need to be modified.
  
    defp filter_by_year(wines, year) do 
         Enum.reduce(wines,[],fn {_a,b,_c}=w,acc->
          if b==year do
           acc ++ [w]
          else
             acc
            end
         end)
    end
    defp filter_by_year([], _year), do: []
  
    defp filter_by_year([{_, year, _} = wine | tail], year) do
      [wine | filter_by_year(tail, year)]
    end
  
    defp filter_by_year([{_, _, _} | tail], year) do
      filter_by_year(tail, year)
    end
  
    defp filter_by_country(wines, country) do
    Enum.reduce(wines,[],fn {_a,_b,c}=w,acc->
          if c==country do
           acc ++ [w]
          else
             acc
            end
         end)
         end
    defp filter_by_country([], _country), do: []
  
    defp filter_by_country([{_, _, country} = wine | tail], country) do
      [wine | filter_by_country(tail, country)]
    end
  
    defp filter_by_country([{_, _, _} | tail], country) do
      filter_by_country(tail, country)
    end
  end
  