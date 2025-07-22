defmodule Question6_test do
  use ExUnit.Case

  test "Question_6 functions" do
    assert LogLevel.to_label(1, true) == :debug
    assert LogLevel.to_label(2, true) == :info
    assert LogLevel.to_label(3, true) == :warning
    assert LogLevel.to_label(4, true) == :error
    assert LogLevel.to_label(5, true) == :unknown
    assert LogLevel.to_label(0, false) == :trace
    assert LogLevel.to_label(6, false) == :unknown
    assert LogLevel.to_label(1, false) == :debug
    assert LogLevel.to_label(2, false) == :info
    assert LogLevel.to_label(3, false) == :warning
    assert LogLevel.to_label(4, false) == :error
  end
end
