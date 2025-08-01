defmodule TakeANumber do
  def start() do
    spawn(fn ->
     loop(0)
     end)
  end
   defp loop(state) do
     receive do
     {:report_state,send_id} ->
       send(send_id,state)
       loop(state)
      {:take_a_number,send_id} ->
      send(send_id,state+1)
        loop(state+1)
      :stop ->
         :ok
       _ ->
         loop(state)
   end
   end
end
