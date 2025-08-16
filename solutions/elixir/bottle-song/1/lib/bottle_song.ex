defmodule BottleSong do
  @moduledoc """
  Handles lyrics of the popular children song: Ten Green Bottles
  """

  @spec recite(pos_integer, pos_integer) :: String.t()
  def recite(start_bottle, take_down) do
  m = ( take_down - 1)
  0..(take_down - 1)
  |> Enum.reduce("",fn x ,acc ->
      if x != m  do
      
           acc <> func( start_bottle - x)  <> "\n"
      else
        
         (acc <> func( start_bottle - x))
         |> String.trim_trailing( "\n")


      end
     
  
  end)
  end

  def func(n) do
  case n do
   1 -> """
One green bottle hanging on the wall,
One green bottle hanging on the wall,
And if one green bottle should accidentally fall,
There'll be no green bottles hanging on the wall.
"""
 2-> """
Two green bottles hanging on the wall,
Two green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be one green bottle hanging on the wall.
"""
3->
"""
Three green bottles hanging on the wall,
Three green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be two green bottles hanging on the wall.
"""
4-> 
"""
Four green bottles hanging on the wall,
Four green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be three green bottles hanging on the wall.
"""
5->
"""
Five green bottles hanging on the wall,
Five green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be four green bottles hanging on the wall.
"""
6->
"""
Six green bottles hanging on the wall,
Six green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be five green bottles hanging on the wall.
"""
7->
"""
Seven green bottles hanging on the wall,
Seven green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be six green bottles hanging on the wall.
"""
8->
"""
Eight green bottles hanging on the wall,
Eight green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be seven green bottles hanging on the wall.
"""
9->
"""
Nine green bottles hanging on the wall,
Nine green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be eight green bottles hanging on the wall.
"""
10->
"""
Ten green bottles hanging on the wall,
Ten green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There'll be nine green bottles hanging on the wall.
"""



  end

  end
end
