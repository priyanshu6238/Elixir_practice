defmodule Question3_test do
   use ExUnit.Case
   test "rules functions" do
      assert Rules.eat_ghost?(true,false) == false
      assert Rules.eat_ghost?(false,true) == false
      assert Rules.eat_ghost?(true,true) == true
      assert Rules.eat_ghost?(false,false) == false
      assert Rules.score?(true,false) == true
      assert Rules.score?(false,true) == true
      assert Rules.score?(true,true) == true
      assert Rules.score?(false,false) == false
      assert Rules.lose?(true,true) == false
      assert Rules.lose?(false,true) == true
      assert Rules.lose?(true,false) == false
      assert Rules.lose?(false,false) == false
      assert Rules.win?(true,true,false) == true
      assert Rules.win?(true,false,true) == false
      assert Rules.win?(false,true,true) == false
   end
end
