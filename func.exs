#Para usar funciones primero hay que definir el módulo en el que se van a encontrar.
#No es más que la carpetita. Por ejemplo, para String.trim() la función es trim, pero
#El módulo en el que se encuentra la función es String.
defmodule Calculadora do

  #suma/2
  def suma(a,b) do
    a + b
  end

  def resta(a,b) do
    a - b
  end

  def multiplicar(a,b) do
    a * b
  end

  def dividir(_a,b) when b == 0 do
    :inf
  end

  def dividir(a,b) do
    a / b
  end
end
