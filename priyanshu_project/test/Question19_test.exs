defmodule Question19Test do
  use ExUnit.Case

  test "Question19_test functions" do
    assert DNA.encode_nucleotide(?\s) == 0
    assert DNA.encode_nucleotide(?A) == 1
    assert DNA.encode_nucleotide(?C) == 2
    assert DNA.encode_nucleotide(?G) == 4
    assert DNA.encode_nucleotide(?T) == 8
    assert DNA.decode_nucleotide(0) == ?\s
    assert DNA.decode_nucleotide(1) == ?A
    assert DNA.decode_nucleotide(2) == ?C
    assert DNA.decode_nucleotide(4) == ?G
    assert DNA.decode_nucleotide(8) == ?T
    assert DNA.encode([]) == <<>>
    assert DNA.encode([?\s, ?A, ?C, ?G, ?T]) == <<0::4, 1::4, 2::4, 4::4, 8::4>>
    assert DNA.decode(<<0::4, 1::4, 2::4, 4::4, 8::4>>) == [?\s, ?A, ?C, ?G, ?T]
  end
end
