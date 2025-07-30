defmodule Question36_test do
  use ExUnit.Case

  test "Remove Nth Node From End of List" do
    list1 = %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 4, next: nil}}}
    merged_list = Question36.remove_nth_from_end(list1, 2)

    assert merged_list.val == 1
    assert merged_list.next.val == 4

    assert merged_list.next.next == nil
  end
end
