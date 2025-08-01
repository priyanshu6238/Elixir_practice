defmodule NameBadge do
  def print(nil,name,nil) do
     ("#{name} - OWNER")
  end
  def print(nil,name,department) do
  g=String.upcase(department)
     s=("#{name} - #{g}")
  end
  
  def print(id,name,nil) do
     s=("[#{id}] - #{name} - OWNER")
  end
  
  def print(id, name, department) do
    g=String.upcase(department)
    s=("[#{id}] - #{name} - #{g}")
    s
  end
end
