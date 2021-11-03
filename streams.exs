# En elixir los enum. se ejecutan por orden, y si un proceso tiene que ejecutarse en una lista de
# 10000000 elementos hata que no lo termine con el último no sigue adelante.
# Para ello exisiten los vagos o lazy colections.
# Estas no se computan hasta que no sea estrictamente necesario.
a = 1..1000
b = a
  |> Stream.map(&IO.inspect/1)
  |> Enum.to_list()
IO.inspect(b)
c = a
  |> Stream.map(&IO.inspect/1)
  |> Enum.take(5)  # Esta función coge los 5 primeros elementos.
IO.inspect(c)
Enum.take(Stream.map(1..1000, fn x -> IO.inspect(x)  end), 5)
