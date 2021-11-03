# Una función de primera clase es como una fucncion pero que puede ser tratada como una variable.
doble = fn x -> 2*x end
b = doble.(8)

# Podemos capturar las funciones ya fabricadas con &
mayus = &String.upcase/1

a = mayus.("hola, qué tal?")
IO.puts(a)
IO.puts(b)
defmodule Funcionespc do

  def funcion1(func) do
    func.("Mi nombre es Rodri")
  end

end

c = Funcionespc.funcion1(mayus)
IO.puts(c)
