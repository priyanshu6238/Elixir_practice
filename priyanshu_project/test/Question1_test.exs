defmodule PriyanshuProjectTest do
  use ExUnit.Case
  # doctest PriyanshuProject

  test "printing hellow word" do
    assert PriyanshuProject.hello() == "Hello,Word"
  end
end
