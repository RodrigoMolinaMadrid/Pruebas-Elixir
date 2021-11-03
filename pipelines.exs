

lista = [1,2,3,4,5,6,7,8,9,10]
a = Enum.filter(lista, fn x -> rem(x,2) == 0 end)
b = Enum.map(Enum.filter(lista, fn x -> rem(x,2) == 0 end), fn x -> 2*x  end)
c = Enum.reduce(Enum.map(Enum.filter(lista, fn x -> rem(x,2) == 0 end), fn x -> 2*x end), fn x, acc -> x + acc  end)
IO.inspect(a)
IO.inspect(b)
IO.inspect(c)

# Pero la última línea es un puto caos...
# Para eso está pipeline. Podemos poner lo mismo pero mucho más ordenado.
# lo que está a la izquierda de |> es el primer parámetro de la funcion que está a la derecha.
# Lo reordena de una forma más acorde con la manipulación de elementos.
d = lista
  |> Enum.filter(fn x -> rem(x,2) == 0 end)
  |> IO.inspect() # Inspect te devuelve exactamente lo mismo que entra y además lo imprime.
  |> Enum.map(fn x -> 2*x end)
  |> Enum.reduce(fn x, acc -> x + acc end)

IO.inspect(d)
