defmodule School do
  @moduledoc """
  Simulate students in a school.

  Each student is in a grade.
  """

  @type school :: %{integer => [String.t()]}

  @doc """
  Create a new, empty school.
  """
  @spec new() :: school
  def new() do
   %{}
    
  end

  @doc """
  Add a student to a particular grade in school.
  """
  @spec add(school, String.t(), integer) :: {:ok | :error, school}
  def add(school, name, grade) do
     if Enum.member?(Map.values(school) |> List.flatten(), name) do
        {:error ,school}
      else
     if Map.has_key?(school,grade) do
         l=Map.get(school,grade,[]) ++ [name]
        {:ok, Map.put(school,grade,l)}
      else
         {:ok,Map.put(school,grade,[name])}
    end
    end
   
    
   
  end

  @doc """
  Return the names of the students in a particular grade, sorted alphabetically.
  """
  @spec grade(school, integer) :: [String.t()]
  def grade(school, grade) do
   Enum.sort(Map.get(school,grade,[]))
  end

  @doc """
  Return the names of all the students in the school sorted by grade and name.
  """
  @spec roster(school) :: [String.t()]
  def roster(school) do
  IO.inspect("P")
    a= school
     |> Enum.sort_by(fn {grade,_} -> grade end)
     |> Enum.flat_map(fn {_grade, students} -> Enum.sort(students) end)

     IO.inspect(a)
     a
  end
end
