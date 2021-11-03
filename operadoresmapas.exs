# Con mapas no podemos sumar dos mapas de la forma:
mapa = %{a: 1, b: 2, c: 3}
mapa1 = %{c: 4, d: 8, e: 16}
IO.inspect(mapa)
IO.inspect(mapa1)
# mapa ++ mapa # Esto dará error.


# Pero tenemos funciones concretas para los mapas.
mapa3 = Map.merge(mapa,mapa1) # Esta junta dos mapas.
IO.inspect(mapa3)
# Si se repite una clave a esa clave solo se le asocia el valor de la derecha.
mapa4 = Map.put(mapa3, :f, 32) # Aquí hay que usar la gramática "oficial".
# Añade un par clave valor.
IO.inspect(mapa4)

# También se puede usar
%{a: x} = mapa4
IO.puts(x)
y = Map.get(mapa4, :c)
IO.puts(y)
IO.inspect(Map.delete(mapa3,:a)) # Elimina el par clave valor del mapa


# Usando una notación especial...
IO.inspect(%{mapa4 |a: 0 })
