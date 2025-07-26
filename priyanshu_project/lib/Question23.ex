defmodule Newsletter do
  def read_emails(path) do
    {:ok, file} = File.open(path, [:read])

    IO.stream(file, :line)
    |> Enum.reduce([], fn x, acc ->
      [String.trim(x) | acc]
    end)
    |> Enum.reverse()
  end

  def open_log(path) do
  end

  def log_sent_email(pid, email) do
    # Please implement the log_sent_email/2 function
  end

  def close_log(pid) do
    # Please implement the close_log/1 function
  end

  def send_newsletter(emails_path, log_path, send_fun) do
    # Please implement the send_newsletter/3 function
  end
end
