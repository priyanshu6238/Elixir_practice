defmodule Question31Test do
  use ExUnit.Case

  test "is_palindrome with a palindrome number" do
    assert Solution31.is_palindrome(121) == true
    assert Solution31.is_palindrome(0) == true
    assert Solution31.is_palindrome(-121) == false
  end
end
