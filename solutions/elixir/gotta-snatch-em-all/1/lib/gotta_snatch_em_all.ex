defmodule GottaSnatchEmAll do
  @type card :: String.t()
  @type collection :: MapSet.t(card())

  @spec new_collection(card()) :: collection()
  def new_collection(card) do
    MapSet.new([card])
  end

  @spec add_card(card(), collection()) :: {boolean(), collection()}
  def add_card(card, collection) do
       bol=MapSet.member?(collection,card)
       if bol == true do
          {true , collection}

         else
           {false ,MapSet.put(collection,card) }
         end
         
  end

  @spec trade_card(card(), card(), collection()) :: {boolean(), collection()}
  def trade_card(your_card, their_card, collection) do
     a=MapSet.member?(collection,their_card)
     b=MapSet.member?(collection,your_card)
     if a== false and b==true do
          g=MapSet.delete(collection,your_card) |> MapSet.put(their_card)
          {true , g}
      else 
          
             {false,MapSet.delete(collection,your_card) |> MapSet.put(their_card)}
        
      
      end
  end

  @spec remove_duplicates([card()]) :: [card()]
  def remove_duplicates(cards) do
     Enum.sort( cards) |> MapSet.new() |> MapSet.to_list()
     
  end

  @spec extra_cards(collection(), collection()) :: non_neg_integer()
  def extra_cards(your_collection, their_collection) do
    MapSet.difference(your_collection, their_collection) |> MapSet.to_list() |> length()
  end

  @spec boring_cards([collection()]) :: [card()]
  def boring_cards([])  , do: []
  def boring_cards(collections) do
    Enum.reduce(collections,Enum.at(collections,0),fn x , acc -> 
           MapSet.intersection(acc,x)
    
    end) |> MapSet.to_list() |> Enum.sort()
  end

  @spec total_cards([collection()]) :: non_neg_integer()
  def total_cards(collections) do
    Enum.reduce(collections,MapSet.new(),fn x , acc -> 
           MapSet.union(acc,x)
    
    end) |> MapSet.to_list() |> length()
  end

  @spec split_shiny_cards(collection()) :: {[card()], [card()]}
  def split_shiny_cards(collection) do
   {a,b}= MapSet.split_with(collection , fn x -> String.at(x,0)== "S" end)
   
    c= a|> MapSet.to_list() |> Enum.sort() 
    d= b|> MapSet.to_list() |> Enum.sort() 
    {c,d}
    
        
   

  end
end
