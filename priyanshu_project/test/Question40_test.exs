defmodule Question40_test do
  use ExUnit.Case

  test "Delete Duplicates" do
    # Create a linked list: 1 -> 2 -> 3 -> 3 -> 4
    head = %ListNode{
      val: 1,
      next: %ListNode{
        val: 2,
        next: %ListNode{val: 3, next: %ListNode{val: 3, next: %ListNode{val: 4, next: nil}}}
      }
    }

    # Expected output after removing duplicates: 1 -> 2 -> 3 -> 4
    expected = %ListNode{
      val: 1,
      next: %ListNode{val: 2, next: %ListNode{val: 3, next: %ListNode{val: 4, next: nil}}}
    }

    assert Question40.delete_duplicates(head) == expected
  end
end
