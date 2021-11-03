# A reduce le pasamos un enumerable (lista, mapas...) y te lo transforma en un valor único.
a = Enum.reduce([1,2,3,4,5,6,7,8,9,10], 1,fn x, acc -> acc*x end)
# Donde está el 0 hay una cosa que se llama acumulador inicial, y luego con la función vamos
# Cambiando el acumulador inicial de tal forma que cada vez tiene un nuevo valor
IO.inspect(a)
b = ["hola", "adios", "buenas", "tardes", "dime", "el", "número", "de", "caracteres"]
IO.inspect(Enum.map( b, &String.length/1))

c = Enum.reduce(b, %{}, fn cad, mapa -> Map.put(mapa , cad, String.length(cad)) end)
# Aquí el acumulable es un mapa vacío, que se va llenando gracias a Map.put(mapa, clave, valor)
IO.inspect(c)
