defmodule Question4_test do
  use ExUnit.Case

  test "Question_4 functions" do
    assert FreelancerRates.daily_rate(5) == 40
    assert FreelancerRates.apply_discount(500, 10) == 450
    assert FreelancerRates.monthly_rate(100, 10) == 15840
    assert FreelancerRates.days_in_budget(1000, 100, 10) == 1.3
  end
end
