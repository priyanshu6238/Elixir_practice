defmodule CaptainsLog do
  @planetary_classes ["D", "H", "J", "K", "L", "M", "N", "R", "T", "Y"]

  def random_planet_class() do
    Enum.random(@planetary_classes)
  end

  def random_ship_registry_number() do
    m=Enum.random(1000..9999)
    "NCC-#{m}"
  end

  def random_stardate() do
    low=41000
    high=42000
       :rand.uniform() * (high-low) + low
  end

 def format_stardate(stardate) when is_integer(stardate) do
 raise ArgumentError
 end
  def format_stardate(stardate) do
    try do
    Float.to_string((Float.round(stardate,1)))
    rescue
      e in RuntimeError ->
       :error
       
    end
  end
end
