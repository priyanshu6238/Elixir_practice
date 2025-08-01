defmodule Question43_test do
  use ExUnit.Case

  test "Question43_test" do
    # Create a linked list: 1 -> 2 -> 3 -> 3 -> 4
    head = %ListNode{
      val: 1,
      next: %ListNode{
        val: 2,
        next: %ListNode{val: 3, next: %ListNode{val: 4, next: nil}}
      }
    }

    # Expected output after removing duplicates: 1 -> 2 -> 3 -> 4
    expected = %ListNode{
      val: 2,
      next: %ListNode{val: 1, next: %ListNode{val: 4, next: %ListNode{val: 3, next: nil}}}
    }

    assert Question43.swap_pairs(head) == expected
  end
end
