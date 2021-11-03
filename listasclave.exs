# Las listas de palabras clave son: listas en donde cada elemento es una tupla
# con dos elementos, el primero siempre un átomo.
listaclave = [{:hola,0},{:adios,1}]
IO.inspect(listaclave)
# listaclave[:hola] == 5 # Esto dará true.
# Suele soportar las mismas funciones que soportan las listas de concatenar, restar
# Porque es una lista con tuplas como elementos que se puede interpretar siempre así.


# Se pueden escribir los if como keywordlist
edad = 12
mensaje = if edad >= 18, do: "Mayor de edad", else: "Menor de edad" #Importante las  comas
IO.puts(mensaje)

# Los def sencillos también se pueden hacer co keywordlist
defmodule Recursividad1 do
  def printlista([]), do: IO.puts("Operación terminada")
  def printlista(lista) do
    IO.puts(hd(lista))
    printlista(tl(lista))
  end
end

lista1 = ["a","b","c","d"]
Recursividad1.printlista(lista1)
