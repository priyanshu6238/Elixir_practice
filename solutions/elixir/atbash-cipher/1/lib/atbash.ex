defmodule Atbash do
  @doc """
  Encode a given plaintext to the corresponding ciphertext

  ## Examples

  iex> Atbash.encode("completely insecure")
  "xlnko vgvob rmhvx fiv"
  """
  @spec encode(String.t()) :: String.t()
  def encode(plaintext) do
    Enum.reduce(0..String.length(plaintext)-1, "", fn i, acc ->
    ch = String.at(plaintext, i)

    cond do
      ch =~ ~r/[a-zA-Z]/ ->
        code = hd(String.to_charlist(String.downcase(ch)))
        # a..z -> 97..122
        atbash = 122 - (code - 97)
        acc <> <<atbash>>

      ch =~ ~r/[0-9]/ ->
        acc <> ch

      true ->
        acc
    end
  end)
  |> String.graphemes()
  |> Enum.chunk_every(5)
  |> Enum.map(&Enum.join/1)
  |> Enum.join(" ")
  end

  @spec decode(String.t()) :: String.t()
  def decode(cipher) do
  cipher
  |> String.replace(" ", "")
  |> encode()
  |> String.replace(" ", "")
  end
end
