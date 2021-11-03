defmodule Matching do

  def prueba(:ok,_cadena) do
    IO.puts("ME HAS PASADO EL ÁTOMO :OK")
  end

  def prueba(atomo, cadena) do
    IO.puts cadena
  end

end
# esta función nos escribirá un :ok debido a que IO.puts() siempre de vuelve un :ok
# Esto mismo del pattern matching lo podemos usar en funciones.
