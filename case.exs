# El case junta condicionales con pattern matching

exp = nil

output = case exp do
  {:ok,x} when is_number(x) -> "Ha dicho #{x}" #línea con when
  {:ok,x} -> "Ha resuelto correctamente con #{x}"
  # {:ok,z} -> "Ha resuelto con #{z}"
  {:error,y} -> "No ha resuelto correctamente con #{y}"
  _ -> "La entrada no ha podido ser Matcheada" # esta es la forma de que al final
  #                               del case no se dé el caso de que la entrada no se
  #                               matchea a nada y que de error.
end

IO.puts(output)

# En el caso de que se pueda hacer pattern matching entonces la variable x o la y
# Toman el valor que le  asociemos, en este caso "hola". Y como salida tenemos a el
# argumento que se indica con -> que en este caso queda guardado en output.
# Si tenemos varios matcheos que coinciden entonces se mete por la primera que pille
# Podemos también meter un when justo acontinuación del matcheo
