defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * (discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    Float.ceil(22.0 * (hourly_rate * 8.0 - hourly_rate * 8.0 * (discount / 100.0))) |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    h = Float.ceil(hourly_rate * 8.0 - hourly_rate * 8.0 * (discount / 100.0))
    Float.floor(budget / h, 1)
  end
end
