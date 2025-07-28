defmodule Question29Test do
  use ExUnit.Case

  test "Question29_test" do
    assert Question29.add_two_numbers(
             %ListNode{val: 2, next: %ListNode{val: 4, next: %ListNode{val: 3}}},
             %ListNode{val: 5, next: %ListNode{val: 6, next: %ListNode{val: 4}}}
           ) == %ListNode{
             val: 7,
             next: %ListNode{
               val: 0,
               next: %ListNode{val: 8, next: nil}
             }
           }
  end
end
