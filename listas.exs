# Las listas se escriben entre corchetes
lista1 = [1,2,3,4]
# Qué diferencia hay con las tuplas?
# La principal es que las tuplas son más cerradas. Solo se puede acceder a sus
# elementos mediante pattern matching o mediante la función elem
# Mientras que en las listas se podría decir que solo tenemos dos elementos,
# Cabeza y cola

IO.inspect(hd(lista1)) #Nos devuelve la cabeza de la lista1 El PRIMER elemento.

IO.inspect(tl(lista1)) #Nos devuelve la cola, lo que o es cabeza de la lista

lista2 = [4] #Tiene como cabeza el número 4 y como cola la lista vacía.
IO.inspect(lista2)
# Las listas vacías no tienen ni cabeza ni cola.
base = []
[1 | base] # Esto dá una lista [1]
IO.inspect([lista1 | lista1]) # Esto da algo más raro
# [[1,2,3,4],1,2,3,4] Es decir le hemos añadido un elemento a la lista de la derecha
# que es una lista en sí. Es una metalista.


# Podemos crear una función con recursivida que nos haga un print de todos los emenentos
# de la lista por separado
defmodule Recursividad1 do
  def printlista([]) do
    IO.puts("Operación terminada")
  end
  def printlista(lista) do
    IO.puts(hd(lista))
    printlista(tl(lista))
  end
end

Recursividad1.printlista(lista1)
# Se puede hacer lo siguiente
# [1|lista1]
# [1, 1, 2, 3, 4]
# [uno, dos| cola] = lista1 asocia los elementos...
