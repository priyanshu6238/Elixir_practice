defmodule Question18_test do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "Question18_test functions" do
    assert PaintByNumber.palette_bit_size(4) == 2
    assert PaintByNumber.palette_bit_size(8) == 3
    assert PaintByNumber.empty_picture() == <<>>
    assert PaintByNumber.test_picture() == <<0::2, 1::2, 2::2, 3::2>>
    assert PaintByNumber.prepend_pixel(<<>>, 4, 2) == <<2::2>>
    assert PaintByNumber.get_first_pixel(<<>>, 4) == nil
    assert PaintByNumber.get_first_pixel(<<2::2, 3::2>>, 4) == 2
    assert PaintByNumber.drop_first_pixel(<<2::2, 3::2>>, 4) == <<3::2>>
  end
end
