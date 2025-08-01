defmodule BoutiqueSuggestions do
  def get_combinations(tops, bottoms, options \\ [maximum_price: 100]) do
    val=Keyword.get(options, :maximum_price,100)
    IO.puts(val)
    for w1 <- tops,
         w2 <- bottoms,w1.base_color != w2.base_color and  (w1.price + w2.price)<val  do
            IO.puts(w1.price+w2.price)
            IO.puts(val)
         {w1,w2}
         
    end
  end
end
