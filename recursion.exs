# Una recursión es cuando una función se llama a sí misma.

defmodule Recursivo do

  # def factorial(n) do
    # n*(n-1)!
    # if n == 0 do
    #   1
    # else
    #   n*factorial(n-1)
    # end
    # Recordamos que no hace falta poner Recursivo.factorial() porque estamos en el mismo módulo

  # end
  # Se puede hacer también con pattern matching
  def factorial(0) do
    1
  end

  def factorial(n) do
    n*factorial(n-1)
  end

  # Se puede hacer también con guardas
  # def factorial(n) when n == 0 do
  #   1
  # end

  # def factorial(n) do
  #   n*factorial(n-1)
  # end


end
n = IO.gets("Inserta el número cuyo factorial quieras calcular: ")
n = String.trim(n)
n = String.to_integer(n)
IO.inspect(Recursivo.factorial(n))
