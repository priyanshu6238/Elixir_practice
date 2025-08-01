defmodule DancingDots.Animation do
  @type dot :: DancingDots.Dot.t()
  @type opts :: keyword
  @type error :: any
  @type frame_number :: pos_integer

  @callback  init(opts()) :: {:ok , opts()} | {:error , error()}
   @callback handle_frame(dot(), frame_number(),opts()) :: dot()

   
  defmacro __using__(_opts) do
    # some real-life ExUnit code omitted here
    quote do
      @behaviour DancingDots.Animation

        def init(opts ), do: {:ok, opts}
          defoverridable init: 1
      
    end
  end

   
end

defmodule DancingDots.Flicker do
  use DancingDots.Animation 

  @impl true
  def handle_frame(dot , frame_number, opt) do
    if rem(frame_number,4) == 0 do
      %{dot | opacity: dot.opacity/2}
    else
      dot
      end
  end
end

defmodule DancingDots.Zoom do
use DancingDots.Animation 

 @impl true
 def init( opt) do
  val= Keyword.get(opt, :velocity) 
 p= IO.inspect(val)
   if is_number(val) do
       {:ok , opt}
  else 
     {:error ,"The :velocity option is required, and its value must be a number. Got: #{inspect(val)}" }
end
 end

  @impl true
  def handle_frame(dot , frame_number, opts) do
   velocity = Keyword.get(opts, :velocity, 0)
    new_r= dot.radius + (frame_number - 1) * velocity
    %{dot | radius: new_r}
  
    
  end
end

