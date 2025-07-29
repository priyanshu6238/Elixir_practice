defmodule Question32_test do
  use ExUnit.Case

  test "Question32_test" do
    assert Question32.length_of_longest_substring("abcabcbb") == 3
    assert Question32.length_of_longest_substring("bbbbb") == 1
    assert Question32.length_of_longest_substring("pwwkew") == 3
    assert Question32.length_of_longest_substring("") == 0
  end
end
