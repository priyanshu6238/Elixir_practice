defmodule Question7_test do
  use ExUnit.Case

  test "Question_7 functions" do
    assert LanguageList.new() == []
    assert LanguageList.add([], "Elixir") == ["Elixir"]
    assert LanguageList.add(["Elixir"], "Java") == ["Java", "Elixir"]
    assert LanguageList.remove(["Elixir", "Java"]) == ["Java"]
    assert LanguageList.first(["Elixir", "Java"]) == "Elixir"
    assert LanguageList.count([]) == 0
    assert LanguageList.count(["Elixir", "Java"]) == 2
    assert LanguageList.functional_list?(["Elixir", "Java"]) == true
    assert LanguageList.functional_list?(["Java", "Python"]) == false
    assert LanguageList.functional_list?([]) == false
  end
end
