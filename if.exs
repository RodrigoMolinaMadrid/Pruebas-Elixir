edad=IO.gets("Escribe tu edad: ")
edad=String.to_integer(String.trim(edad))
if edad>=18 do
  IO.puts("Mayor de edad")
else
  IO.puts("Menor de edad")
end
#tambien podemos hacer: En este caso "hola" no se va a
#devolver porque siempre se devuelve la última expresión
#de hecho hace saltar un warning

mensaje = if edad>=18 do
  "hola"
  "Mayor de edad"
else
  "Menor de edad"
end
IO.puts(mensaje)
#Y obtenemos el mismor resultado. Incluso podríamos hacer:

IO.puts(if edad>=18 do
  "Mayor de edad"
else
  "Menor de edad"
end)
#Si no ponemos el else nos imprime un nill
IO.puts(if edad>=18 do
  "Mayor de edad"
end)
#Podemos seguir probando muchas cosas.

if edad>=18 do
  IO.puts("Mayor de edad")
else
  anios=18-edad
  IO.puts("Menor de edad, vuelve dentro de #{anios} años")
end
#IO.puts(anios)
