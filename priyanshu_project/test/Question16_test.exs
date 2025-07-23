defmodule Question16_test do
  use ExUnit.Case

  test "Question16_test functions" do
    pid= TakeANumber.start()
    send(pid,{:report_state,self()})
    assert_receive 0

    pid =TakeANumber.start()
    send(pid,{:take_a_number,self()})
    assert_receive 1
    
    
  end
end