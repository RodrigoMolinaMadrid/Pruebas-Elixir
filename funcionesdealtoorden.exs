# Existe tambien la función apply que hace lo mismo que el doble.()
# Será de la forma apply(name_function, [parametro1, parametro2...])
# La función apply es una funcion de alto orden.

doble = fn x -> 2*x end
b = doble.(8)

mayus = &String.upcase/1
a = mayus.("hola, qué tal?")

c = apply(doble,[b])

d = apply(&rem/2,[9, 2])

IO.inspect(a)

IO.inspect(b)

IO.inspect(c)

IO.inspect(d)
