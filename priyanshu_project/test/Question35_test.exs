defmodule Question35_test do
  use ExUnit.Case

  test "merge_two_lists with two sorted lists" do
    list1 = %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 4, next: nil}}}
    list2 = %ListNode{val: 1, next: %ListNode{val: 3, next: %ListNode{val: 4, next: nil}}}
    merged_list = Question35.merge_two_lists(list1, list2)

    assert merged_list.val == 1
    assert merged_list.next.val == 1
    assert merged_list.next.next.val == 2
    assert merged_list.next.next.next.val == 3
    assert merged_list.next.next.next.next.val == 4
    assert merged_list.next.next.next.next.next.val == 4
    assert merged_list.next.next.next.next.next.next == nil
  end
end
