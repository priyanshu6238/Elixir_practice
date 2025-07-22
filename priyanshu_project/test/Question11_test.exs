defmodule Question11_test do
  use ExUnit.Case
  # doctest PriyanshuProject

test "Question11_test functions" do
    assert BirdCount.today([1,2,3,4,5]) == 1
    assert BirdCount.increment_day_count([1,2,3,4,5]) == [2,2,3,4,5]
    assert BirdCount.has_day_without_birds?([1,0,3,4,]) ==true
    assert BirdCount.total([1,2,3,4,5]) == 15
    assert BirdCount.busy_days([1,2,3,4,5]) == 1
  end
end