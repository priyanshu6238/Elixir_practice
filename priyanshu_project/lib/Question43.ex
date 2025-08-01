defmodule Question43 do
  @spec swap_pairs(head :: ListNode.t() | nil) :: ListNode.t() | nil
  def swap_pairs(nil), do: nil
  def swap_pairs(head) when head.next == nil, do: head

  def swap_pairs(head) do
    %ListNode{
      val: head.next.val,
      next: %ListNode{val: head.val, next: swap_pairs(head.next.next)}
    }
  end
end
