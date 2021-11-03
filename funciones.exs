#Para usar funciones primero hay que definir el módulo en el que se van a encontrar.
#No es más que la carpetita. Por ejemplo, para String.trim() la función es trim, pero
#El módulo en el que se encuentra la función es String.
defmodule Calculadora do
  #suma/2
  def suma(a,b) do
    IO.puts("Esta función será capaz de calcular #{a} más #{b}")
    c = a + b
    c
  end
end
IO.inspect(Calculadora.suma(3,2))
a = Calculadora.suma(6,5)
IO.puts("El resultado de la suma es #{a}")
