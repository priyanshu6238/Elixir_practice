defmodule BirdCount do
  def today([]) do
  end

  def today([head | _tail]) do
    head
  end

  def increment_day_count([]) do
    [1]
  end

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end

  def has_day_without_birds?([]) do
    false
  end

  def has_day_without_birds?([head | tail]) do
    cond do
      head == 0 -> true
      true -> has_day_without_birds?(tail)
    end
  end

  def total([]) do
    0
  end

  def total([head | tail]) do
    head + total(tail)
  end

  def total([head | tail]) do
    head + total(tail)
  end

  def busy_days([]) do
    0
  end

  def busy_days([head | tail]) do
    cond do
      head >= 5 -> 1 + busy_days(tail)
      true -> busy_days(tail)
    end
  end
end
