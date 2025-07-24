defmodule Question17_test do
  use ExUnit.Case

  test "Question17_test functions" do
    assert WineCellar.filter(
             [
               white: {"Chardonnay", 2015, "Italy"},
               white: {"Chardonnay", 2014, "France"},
               rose: {"Dornfelder", 2018, "Germany"},
               red: {"Merlot", 2015, "France"},
               white: {"Riesling ", 2017, "Germany"},
               white: {"Pinot grigio", 2015, "Germany"},
               red: {"Pinot noir", 2016, "France"},
               red: {"Pinot noir", 2013, "Italy"}
             ],
             :white,
             year: 2015
           ) == [
             {"Chardonnay", 2015, "Italy"},
             {"Pinot grigio", 2015, "Germany"}
           ]
  end
end
