defmodule KitchenCalculator do
  def get_volume({_volume_pair,value}) do
     value
  end

  def to_milliliter({volume_pair,value}) do
     cond do
      volume_pair==:cup -> {:milliliter,value*240}
      volume_pair==:milliliter ->{:milliliter,value}
      volume_pair==:fluid_ounce ->{:milliliter,value*30}
      volume_pair==:teaspoon ->{:milliliter,5*value}
      volume_pair==:tablespoon ->{:milliliter,15*value}

     end
  end

  def from_milliliter({_key,value}, unit) when unit==:cup do
     {:cup,value/240}

  end
   def from_milliliter({_key,value}, unit) when unit==:milliliter do

     {:milliliter,value}
  end
  def from_milliliter({_key,value}, unit) when unit==:fluid_ounce do
     {:fluid_ounce,value/30}
  end
  def from_milliliter({_key,value},unit) when unit ==:teaspoon do
     {:teaspoon,value/5}
  end
  def from_milliliter({_key,value}, unit) when unit==:tablespoon do
     {:tablespoon,value/15}
  end

  def convert({:milliliter,value}, unit) do
    cond do
     unit== :milliliter -> {unit,value}
     unit== :cup -> {unit,value*240}
     unit== :teaspoon  -> {unit,value*5}
     unit== :tablespoon -> {unit,value*15}
     unit== :fluid_ounce -> {unit,value*30}

    end
  end
  def convert({:cup ,value}, unit) do
    cond do
     unit== :milliliter -> {unit,(240*value)}
     unit== :cup -> {unit,value}
     unit== :teaspoon  -> {unit,(240*value)/5}
     unit== :tablespoon -> {unit,(value*240)/15}
     unit== :fluid_ounce -> {unit,(value*240)/30}
    end
    end
    def convert({ :teaspoon,value}, unit) do
    cond do
     unit== :milliliter -> {unit,(5*value)}
     unit== :cup -> {unit,(5*value)/240}
     unit== :teaspoon  -> {unit,(5*value)/5}
     unit== :tablespoon -> {unit,(value*5)/15}
     unit== :fluid_ounce -> {unit,(value*5)/30}
    end
    end
    def convert({:tablespoon ,value}, unit) do
    cond do
     unit== :milliliter -> {unit,(15*value)}
     unit== :cup -> {unit,(15*value)/240}
     unit== :teaspoon  -> {unit,(15*value)/5}
     unit== :tablespoon -> {unit,(value*15)/15}
     unit== :fluid_ounce -> {unit,(value*15)/30}
    end
    end
    def convert({:fluid_ounce,value}, unit) do
    cond do
     unit== :milliliter -> {unit,(30*value)}
     unit== :cup -> {unit,(30*value)/240}
     unit== :teaspoon  -> {unit,(30*value)/5}
     unit== :tablespoon -> {unit,(value*30)/15}
     unit== :fluid_ounce -> {unit,(value*30)/30}
    end
  end


end
