defmodule Question35 do
  @spec merge_two_lists(list1 :: ListNode.t() | nil, list2 :: ListNode.t() | nil) ::
          ListNode.t() | nil
  def merge_two_lists(nil, nil), do: nil
  def merge_two_lists(nil, list), do: list
  def merge_two_lists(list, nil), do: list

  def merge_two_lists(list1, list2) do
    if list1.val < list2.val do
      %ListNode{val: list1.val, next: merge_two_lists(list1.next, list2)}
    else
      %ListNode{val: list2.val, next: merge_two_lists(list1, list2.next)}
    end
  end
end
