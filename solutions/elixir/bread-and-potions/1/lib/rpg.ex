defmodule RPG do
  defmodule Character do
    defstruct health: 100, mana: 0
  end
  defprotocol Edible do
   def eat(item,character)

  end

  defimpl Edible , for: RPG.LoafOfBread do
  
     def eat(_team, %RPG.Character{health: h,mana: m}) do
      {nil,%RPG.Character{health: h+5, mana: m}}
     end
     
    end
    
   


  defmodule LoafOfBread do
    defstruct []
  end

  defmodule ManaPotion do
    defstruct strength: 10
  end

  defmodule Poison do
    defstruct []
  end

  defmodule EmptyBottle do
    defstruct []
  end
   defimpl Edible , for: RPG.ManaPotion do
  
     def eat(%RPG.ManaPotion{strength: s}, %RPG.Character{health: h,mana: m}) do
      {%RPG.EmptyBottle{}, %RPG.Character{health: h, mana: m+s}}
     end
     
    end

     defimpl Edible , for: RPG.ManaPotion do
     
     def eat(%RPG.ManaPotion{strength: s}, %RPG.Character{health: h,mana: m}) do
      {%RPG.EmptyBottle{}, %RPG.Character{health: h, mana: m+s}}
     end
     
    end

    defimpl Edible , for: RPG.Poison do
     
     def eat(%RPG.Poison{}, %RPG.Character{health: h,mana: m}) do
      {%RPG.EmptyBottle{}, %RPG.Character{health: 0, mana: m}}
     end
     
    end
 
  # Add code to define the protocol and its implementations below here...
end
