defmodule Question36 do
  @spec remove_nth_from_end(head :: ListNode.t() | nil, n :: integer) :: ListNode.t() | nil
  def is_remove_nth_from_end(nil, n), do: nil
  def is_remove_nth_from_end(head, n) when n == 0, do: head.next

  def length_of_list(nil), do: 0

  def length_of_list(head) do
    length_of_list(head.next) + 1
  end

  def is_remove_nth_from_end(head, n) do
    %ListNode{val: head.val, next: is_remove_nth_from_end(head.next, n - 1)}
  end

  def remove_nth_from_end(head, n) do
    find = length_of_list(head) - n
    IO.inspect(find)
    is_remove_nth_from_end(head, find)
  end
end
