defmodule FileSniffer do
  def type_from_extension(extension) do
    case extension do
      "exe" -> "application/octet-stream"
      "bmp" -> "image/bmp"
      "png" -> "image/png"
      "jpg" -> "image/jpg"
      "gif" -> "image/gif"
      _ -> nil
    end
  end

  def type_from_binary(file_binary) do
    case file_binary do
      <<0x7F, 0x45, 0x4C, 0x46, _rest::binary>> -> "application/octet-stream"
      <<0x42, 0x4D, _rest::binary>> -> "image/bmp"
      <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, _rest::binary>> -> "image/png"
      <<0xFF, 0xD8, 0xFF, _rest::binary>> -> "image/jpg"
      <<0x47, 0x49, 0x46, _rest::binary>> -> "image/gif"
      _ -> nil
    end
  end

  def func(file_binary) do
    case file_binary do
      <<0x7F, 0x45, 0x4C, 0x46, _rest::binary>> -> "exe"
      <<0x42, 0x4D, _rest::binary>> -> "bmp"
      <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, _rest::binary>> -> "png"
      <<0xFF, 0xD8, 0xFF, _rest::binary>> -> "jpg"
      <<0x47, 0x49, 0x46, _rest::binary>> -> "gif"
      _ -> nil
    end
  end

  def verify(file_binary, extension) do
    t = func(file_binary)

    if t == extension,
      do: {:ok, type_from_binary(file_binary)},
      else: {:error, "Warning, file format and file extension do not match."}
  end
end
