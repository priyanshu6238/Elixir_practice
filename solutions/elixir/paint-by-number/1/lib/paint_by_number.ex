defmodule PaintByNumber do
  def palette_bit_size(0) do
    0
  end
  def palette_bit_size(1) do 1 end
  def palette_bit_size(2) do 1 end
  def palette_bit_size(color_count) do
     n=(color_count/2) |> Float.ceil() |> trunc()
    palette_bit_size(n)+1
  end

  def empty_picture() do
    <<>>
  end

  def test_picture() do
     <<0::2,1::2,2::2,3 :: 2>>
  end

  def prepend_pixel(picture, color_count, pixel_color_index) do
    bitsize=palette_bit_size(color_count)
    <<pixel_color_index:: size(bitsize),picture :: bitstring>>
  end

  def get_first_pixel(<<>>, _color_count) do
    nil
  end
  def get_first_pixel(picture, color_count) do
    n=palette_bit_size(color_count)
    <<value::size(n),_rest :: bitstring>> = picture
    value
  end

def drop_first_pixel(<<>>, _color_count) do <<>> end
  def drop_first_pixel(picture, color_count) do
    
    n=palette_bit_size(color_count)
     <<value::size(n),rest::bitstring>>=picture
     rest
    
    
  end

  def concat_pictures(picture1, picture2) do
    <<picture1 :: bitstring,picture2 :: bitstring>>
  end
end
