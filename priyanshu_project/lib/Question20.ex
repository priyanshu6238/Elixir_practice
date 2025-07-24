defmodule BasketballWebsite do
    def extract_from_path(data, path) do
      list=String.split(path,".")
        Enum.reduce(0..(length(list)-1),data,fn x,acc-> 
             acc=acc[Enum.at(list,x)]
        end)
    end
  
    def get_in_path(data, path) do
     extract_from_path(data, path)
    end
  end
  