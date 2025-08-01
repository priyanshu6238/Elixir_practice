defmodule HighSchoolSweetheart do
  def first_letter(name) do
  name=String.trim(name)
    String.at(name,0)
  end

  def initial(name) do
    name=String.at(name,0)
    |> String.upcase()
    name <> "."
  end

  def initials(full_name) do
     [head |[head1|_tail]]=String.split(full_name)
    
    IO.puts(String.at(head,0))
    IO.puts(String.at(head1,0))
    String.at(head,0) <> ". " <> String.at(head1,0) <> "."
    
  end

  def pair(full_name1, full_name2) do
    a=initials(full_name1)
    b=initials(full_name2)
    "❤-------------------❤\n|  #{a}  +  #{b}  |\n❤-------------------❤\n"
  end
end
