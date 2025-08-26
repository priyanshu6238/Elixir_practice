defmodule Garden do

 @map %{
     alice: {},
     bob: {},
     charlie: {},
     david: {},
     eve: {},
     fred: {},
     ginny: {},
     harriet: {},
     ileana: {},
     joseph: {},
     kincaid: {},
     larry: {}
   }
  @doc """
    Accepts a string representing the arrangement of cups on a windowsill and a
    list with names of students in the class. The student names list does not
    have to be in alphabetical order.

    It decodes that string into the various gardens for each student and returns
    that information in a map.
  """   
  @spec info(String.t(), list) :: map
  def info(info_string) do
    [head| tail]=info_string
    |> String.split("\n")
    
    list1 = func(head)
    list2 = func(List.to_string(tail))
    Enum.reduce(0..length(list1)-1 ,@map ,fn x , acc -> 
          tuple={}
          str1= Enum.at(list1,x)
          str2=Enum.at(list2,x)
          tuple= 
          tuple
          |> Tuple.append(func1(String.at(str1,0)))
          |> Tuple.append(func1(String.at(str1,1)))
          |> Tuple.append(func1(String.at(str2,0)))
          |> Tuple.append(func1(String.at(str2,1)))
   
           Map.put(acc,func2(x+1),tuple)
    end) 
  end

  def info(info_string,student_name) do
     student_name=Enum.sort(student_name)
       [head| tail]=info_string
    |> String.split("\n")
    
    list1 = func(head)
    list2 = func(List.to_string(tail))

    map= Enum.reduce(0..length(list1)-1 ,@map ,fn x , acc -> 
          tuple={}
          str1= Enum.at(list1,x)
          str2=Enum.at(list2,x)
          tuple= 
          tuple
          |> Tuple.append(func1(String.at(str1,0)))
          |> Tuple.append(func1(String.at(str1,1)))
          |> Tuple.append(func1(String.at(str2,0)))
          |> Tuple.append(func1(String.at(str2,1)))
   
           Map.put(acc,Enum.at(student_name,x),tuple)
    end) 

    Enum.reduce(student_name,map,fn x ,acc ->

       if Map.has_key?(acc,x) do
           acc
       else
        Map.put(acc,x , {})
       end

    end)
   end

  defp func(str1) do

    str1
    |> String.graphemes()
    |> Enum.chunk_every(2)
    |> Enum.map(fn x -> Enum.join(x) end)
  end

  defp func1(str) do
    cond do
     str == "G" -> :grass
     str == "C" -> :clover
     str == "R" -> :radishes
     str == "V" -> :violets
    end

  end

  defp func2(num) do
   case num do
   1 -> :alice
   2 -> :bob
   3 -> :charlie
   4 -> :david
   5 -> :eve
   6 -> :fred
   7 -> :ginny
   8 -> :harriet
   9 -> :ileana
   10 -> :joseph
   11 -> :kincaid
   12 -> :larry

   end

  end
end
