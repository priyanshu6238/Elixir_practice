defmodule Question22_test do
  use ExUnit.Case

  test "Question22_test" do
    assert FileSniffer.type_from_extension("exe") == "application/octet-stream"
    assert FileSniffer.type_from_extension("bmp") == "image/bmp"
    assert FileSniffer.type_from_extension("png") == "image/png"
    assert FileSniffer.type_from_extension("jpg") == "image/jpg"
    assert FileSniffer.type_from_extension("gif") == "image/gif"
    assert FileSniffer.type_from_extension("txt") == nil
    assert FileSniffer.type_from_binary(<<0x7F, 0x45, 0x4C, 0x46>>) == "application/octet-stream"
    assert FileSniffer.type_from_binary(<<0x42, 0x4D>>) == "image/bmp"

    assert FileSniffer.type_from_binary(<<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A>>) ==
             "image/png"

    assert FileSniffer.type_from_binary(<<0xFF, 0xD8, 0xFF>>) == "image/jpg"
    assert FileSniffer.type_from_binary(<<0x47, 0x49, 0x46>>) == "image/gif"
    assert FileSniffer.type_from_binary(<<0x00, 0x00>>) == nil

    assert FileSniffer.verify(<<0x7F, 0x45, 0x4C, 0x46>>, "exe") ==
             {:ok, "application/octet-stream"}
  end
end
