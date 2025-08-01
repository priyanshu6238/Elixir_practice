defmodule Question40 do
  @spec delete_duplicates(head :: ListNode.t() | nil) :: ListNode.t() | nil

  def isdelete(nil, const), do: nil
  def isdelete(head, const) when head.next == nil and head.val != const, do: head
  def isdelete(head, const) when head.next == nil and head.val == const, do: nil

  def isdelete(head, const) do
    if head.val != const do
      %ListNode{val: head.val, next: isdelete(head.next, head.val)}
    else
      isdelete(head.next, const)
    end
  end

  def delete_duplicates(head) do
    isdelete(head, -10000)
  end
end
