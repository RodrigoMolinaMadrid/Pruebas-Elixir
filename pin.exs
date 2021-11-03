# Cuando cambiamos el nombre de una variable ocurre un rebind es decir
# Cambia el valor de la variable.
# Pero existe un operador que se llama pin que sirve para impedir que haga esto.
# Obligamos a elixir a intentar matchear pero tratando las variables que pineemos
# Como si ya existiesen y fuesen variables a cuadrar con el resto de la expresión.
x = 4
^x = 4
# ^x = 5
# Esta dará un MatchError porque no se puede matchear el lado derecho e izquierdo

# Si hacemos:
# {:ok, ^x, y} = {:ok, 5, 0}
# Dará un MatchError, porque trata la x como algo que hay que comparar en vez de algo
# Que hay que asignar

# Si hacemos:
{:ok, ^x, y} = {:ok, 4, 0}
IO.puts("El valor de x es: #{x}")
IO.puts("El valor de y es: #{y}")

# No dará MatchError porque al ser x == 4 true puede hacer el matcheo con la y
