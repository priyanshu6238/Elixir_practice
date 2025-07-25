defmodule Question9_test do
  use ExUnit.Case

  test "Question_10 functions" do
    assert KitchenCalculator.get_volume({:cup, 1}) == 1
    assert KitchenCalculator.get_volume({:fluid_ounce, 1}) == 1
    assert KitchenCalculator.get_volume({:teaspoon, 1}) == 1
    assert KitchenCalculator.get_volume({:tablespoon, 1}) == 1
    assert KitchenCalculator.get_volume({:milliliter, 1}) == 1
    assert KitchenCalculator.to_milliliter({:cup, 1}) == {:milliliter, 240}
    assert KitchenCalculator.to_milliliter({:fluid_ounce, 1}) == {:milliliter, 30}
    assert KitchenCalculator.to_milliliter({:teaspoon, 1}) == {:milliliter, 5}
    assert KitchenCalculator.to_milliliter({:tablespoon, 1}) == {:milliliter, 15}
    assert KitchenCalculator.to_milliliter({:milliliter, 1}) == {:milliliter, 1}
    assert KitchenCalculator.from_milliliter({:milliliter, 240}, :cup) == {:cup, 1.0}
    assert KitchenCalculator.from_milliliter({:milliliter, 30}, :fluid_ounce) == {:fluid_ounce, 1}
    assert KitchenCalculator.from_milliliter({:milliliter, 5}, :teaspoon) == {:teaspoon, 1}
    assert KitchenCalculator.from_milliliter({:milliliter, 15}, :tablespoon) == {:tablespoon, 1}
    assert KitchenCalculator.from_milliliter({:milliliter, 1}, :milliliter) == {:milliliter, 1}
    assert KitchenCalculator.convert({:milliliter, 240}, :cup) == {:cup, 57600}
    assert KitchenCalculator.convert({:cup, 1}, :milliliter) == {:milliliter, 240}
    assert KitchenCalculator.convert({:teaspoon, 1}, :milliliter) == {:milliliter, 5}
    assert KitchenCalculator.convert({:tablespoon, 1}, :milliliter) == {:milliliter, 15}
    assert KitchenCalculator.convert({:fluid_ounce, 1}, :milliliter) == {:milliliter, 30}
    assert KitchenCalculator.convert({:cup, 1}, :teaspoon) == {:teaspoon, 48}
    assert KitchenCalculator.convert({:cup, 1}, :tablespoon) == {:tablespoon, 16}
    assert KitchenCalculator.convert({:cup, 1}, :fluid_ounce) == {:fluid_ounce, 8}
    assert KitchenCalculator.convert({:teaspoon, 1}, :cup) == {:cup, 0.020833333333333332}
    assert KitchenCalculator.convert({:tablespoon, 1}, :cup) == {:cup, 0.0625}
    assert KitchenCalculator.convert({:fluid_ounce, 1}, :cup) == {:cup, 0.125}

    assert KitchenCalculator.convert({:teaspoon, 1}, :tablespoon) ==
             {:tablespoon, 0.3333333333333333}

    assert KitchenCalculator.convert({:tablespoon, 1}, :teaspoon) == {:teaspoon, 3}
    assert KitchenCalculator.convert({:fluid_ounce, 1}, :teaspoon) == {:teaspoon, 6}
    assert KitchenCalculator.convert({:fluid_ounce, 1}, :tablespoon) == {:tablespoon, 2}

    assert KitchenCalculator.convert({:teaspoon, 1}, :fluid_ounce) ==
             {:fluid_ounce, 0.16666666666666666}

    assert KitchenCalculator.convert({:tablespoon, 1}, :fluid_ounce) == {:fluid_ounce, 0.5}
  end
end
