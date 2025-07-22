defmodule Question5Test do
  use ExUnit.Case

  test "Question_5 functions" do
    add1 = Secrets.secret_add(2)
    assert add1.(2) == 4
    sub1 = Secrets.secret_subtract(1)
    assert sub1.(2) == 1
    multi1 = Secrets.secret_multiply(3)
    assert multi1.(2) == 6
    div1 = Secrets.secret_divide(2)
    assert div1.(4) == 2
    and1 = Secrets.secret_and(3)
    assert and1.(5) == 1
    xor1 = Secrets.secret_xor(3)
    assert xor1.(5) == 6
  end
end
