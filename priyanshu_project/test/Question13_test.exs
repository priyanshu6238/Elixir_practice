defmodule Question13_test do
  use ExUnit.Case

  test "Question13_test functions" do
    assert Username.sanitize(~c"  Alice  ") == ~c"lice"
    assert Username.sanitize(~c"marcel_huber") == ~c"marcel_huber"
    assert Username.sanitize(~c"köhler_jäger42") == ~c"koehler_jaeger"
  end
end
