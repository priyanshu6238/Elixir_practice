defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and legacy? == false -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and legacy? == false -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    h = to_label(level, legacy?)

    cond do
      h == :error or h == :fatal -> :ops
      h == :unknown and legacy? == false -> :dev2
      h == :unknown and legacy? == true -> :dev1
      true -> false
    end
  end
end
