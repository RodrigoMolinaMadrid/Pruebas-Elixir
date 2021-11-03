# En este archivo se verán las principales funciones para operar con listas.
# operador ++ concatenación de listas. No es igual que el de concatenación de cadenas <>
lista1 = [1,2,3,4,5]
lista2 = ["rojo", "azul", "verde", "amarillo"]

lista3 = lista1 ++ lista2
IO.inspect(lista3)

# Es super útil para hacer inserciones por la derecha
# Operador -- devuelve los elementos de la lista izquierda que no estén en la derecha.
IO.inspect(lista3 -- lista1)
# Para extraer un elemento de una lista se puede usar
IO.puts(Enum.at(lista1,3))
