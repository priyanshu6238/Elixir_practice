# Definition for singly-linked list.
#
defmodule ListNode do
  @type t :: %__MODULE__{
          val: integer,
          next: ListNode.t() | nil
        }
  defstruct val: 0, next: nil
end

defmodule Question29 do
  @spec add_two_numbers(l1 :: ListNode.t() | nil, l2 :: ListNode.t() | nil) :: ListNode.t() | nil

  def go_add_to_numbers(nil, nil, check_sum?) do
    if check_sum?, do: %ListNode{val: 1}, else: nil
  end

  def go_add_to_numbers(nil, l2, check_sum?) do
    if check_sum?, do: go_add_to_numbers(%ListNode{val: 1}, l2, false), else: l2
  end

  def go_add_to_numbers(l1, nil, check_sum?) do
    if check_sum?, do: go_add_to_numbers(l1, %ListNode{val: 1}, false), else: l1
  end

  def go_add_to_numbers(l1, l2, check_sum?) do
    sum = l1.val + l2.val + if check_sum?, do: 1, else: 0

    if sum < 10 do
      %ListNode{val: sum, next: go_add_to_numbers(l1.next, l2.next, false)}
    else
      %ListNode{val: sum - 10, next: go_add_to_numbers(l1.next, l2.next, true)}
    end
  end

  def add_two_numbers(l1, l2) do
    go_add_to_numbers(l1, l2, false)
  end
end
