defmodule ComplexNumbers do
  @typedoc """
  In this module, complex numbers are represented as a tuple-pair containing the real and
  imaginary parts.
  For example, the real number `1` is `{1, 0}`, the imaginary number `i` is `{0, 1}` and
  the complex number `4+3i` is `{4, 3}'.
  """
  @type complex :: {number, number}

  @doc """
  Return the real part of a complex number
  """
  @spec real(a :: complex) :: number
  def real( {c,d} = a ) do
      c
  end

  @doc """
  Return the imaginary part of a complex number
  """
  @spec imaginary(a :: complex) :: number
  def imaginary({p,r}=a) do
     r
  end

  @doc """
  Multiply two complex numbers, or a real and a complex number
  """
  @spec mul(a :: complex | number, b :: complex | number) :: complex
  def mul({r1,i1}=a,{r2,i2}= b) do
     {(r1*r2 - i2*i1),  ( i1*r2 + r1*i2)}
      
  end
   def mul(a,{r2,i2}= b) do
     {(a*r2),  (  a*i2)}
      
  end
   def mul({r1,i1}=a,b) do
   IO.inspect( {(r1*b ),  ( i1*b )})
     {(r1*b ),  ( i1*b )}
      
  end
  

  @doc """
  Add two complex numbers, or a real and a complex number
  """
  @spec add(a :: complex | number, b :: complex | number) :: complex
  def add({r1,i1}=a,{r2,i2}= b) do
      {r1+r2,i1+i2}
  end
  def add({r1,i1}=a, b) do
      {r1+b,i1}
  end
  def add(a,{r2,i2}= b) do
      {a+r2,i2}
  end

  @doc """
  Subtract two complex numbers, or a real and a complex number
  """
  @spec sub(a :: complex | number, b :: complex | number) :: complex
  def sub({r1,i1}=a,{r2,i2}= b) do
     {r1-r2,i1-i2}
  end

   def sub(a,{r2,i2}= b) do
     {a-r2,-i2}
  end

   def sub({r1,i1}=a, b) do
     {r1-b,i1}
  end

  @doc """
  Divide two complex numbers, or a real and a complex number
  """
  @spec div(a :: complex | number, b :: complex | number) :: complex
  def div({a,b}, {c,d}) do
       {((a * c + b * d) / (c*c + d*d)), ((b * c - a * d) / (c*c + d*d)) }
  end
   def div(a, {c,d}) do
       {((a * c ) / (c*c + d*d)), (-(a * d) / (c*c + d*d)) }
  end
   def div({a,b}, c) do
       {((a * c ) / (c*c )), ((b * c ) / (c*c )) }
  end

  @doc """
  Absolute value of a complex number
  """
  @spec abs(a :: complex) :: number
  def abs({a,b}) do
  :math.sqrt(a*a + b*b)
  end

  @doc """
  Conjugate of a complex number
  """
  @spec conjugate(a :: complex) :: complex
  def conjugate({a,b}) do
     {a,-b}
  end

  @doc """
  Exponential of a complex number
  """
  @spec exp(a :: complex) :: complex
  def exp({a,b}) do

          { :math.exp(a)* :math.cos(b), :math.exp(a) * :math.sin(b)}
  
  end
end
