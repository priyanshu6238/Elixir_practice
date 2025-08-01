defmodule RPG.CharacterSheet do
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  def ask_name() do
    IO.puts("What is your character's name?")
    IO.gets("") |> String.trim()
  end

  def ask_class() do
    
    IO.gets("What is your character's class?\n")|> String.trim()
  end

  def ask_level() do
    IO.gets("What is your character's level?\n")|>String.trim()|> String.to_integer()
  end

  def run() do
   IO.puts("Welcome! Let's fill out your character sheet together.")
   name1=ask_name()
   class1=ask_class()
   level1=ask_level()
   map=%{class: class1,level: level1, name: name1 }
   IO.inspect(map,label: "Your character")
   map
   
   
    
  end
end
