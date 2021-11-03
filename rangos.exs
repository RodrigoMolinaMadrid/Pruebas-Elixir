# Los rangos son una estructura de datos que se puede recorrer de manera similar a una lista.
a = 1..10
b = a
  |> Enum.map(fn x -> IO.inspect(x) end)
# |> Enum.map(&IO.inspect/1)  Esta línea hace lo mismo que la de arriba.
IO.inspect(b)

c = 1..100000
d = c
  |> Enum.filter(fn x -> rem(x,2) == 0 end)
IO.inspect(d)

IO.inspect(length(d))
