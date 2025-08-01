defmodule Newsletter do
  def read_emails(path) do
    {:ok,file}=File.open(path,[:read])

    IO.stream(file, :line)
   |> Enum.reduce([],fn x,acc -> 
        [ String.trim(x) | acc ]
   end)
   |>Enum.reverse() 
  
  end

  def open_log(path) do
     case File.open(path,[:write]) do
        {:ok,file} ->file
        {:error ,file} -> :error
     end
    
  end

  def log_sent_email(pid, email) do
        IO.puts(pid,email)
  end

  def close_log(pid) do
    File.close(pid)
  end

  def send_newsletter(emails_path, log_path, send_fun) do
     {:ok,open}=File.open(emails_path,[:read])
     {:ok,log}=File.open(log_path,[:write])
     IO.stream(open, :line)
     |> Enum.each(fn email ->
        trimed=String.trim(email)
        if send_fun.(trimed)== :ok do
            IO.puts(log,trimed)
        end
          
      end  )
      File.close(log)
     
  end
end
