defmodule Question44 do
  @text_types [:text, :quick_reply, :list]
  @spec strip(any()) :: String.t()
  defp strip(msgs) when is_list(msgs),
    do: msgs |> hd() |> strip()

  defp strip(%{body: body} = _msg),
    do: strip(body)

  defp strip(msg) when is_binary(msg),
    do: msg |> String.trim() |> String.downcase()

  defp strip(_msg), do: ""

  def do_execute(%{type: "has_pattern", arguments: pattern} = c, %{type: type} = msg) do
    with true <- type in @text_types,
         stripped_pattern <- strip(pattern),
         {:ok, regex} <- Regex.compile(stripped_pattern) do
      Regex.match?(regex, strip(msg))
    else
      _ -> false
    end
  end
end
