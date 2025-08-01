defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
     [ language | list ]
  end

  def remove([head | tail]) do
    tail
  end

  def first([head| tail]) do
  head
  end

  def count([]) do 0 end
  
  def count([head |tail]) do
     
     count1=count(tail)+1
     count1
    
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
