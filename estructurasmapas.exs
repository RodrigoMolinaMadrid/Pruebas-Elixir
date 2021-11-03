# Las esctructuras han de vivir en los módulos.

defmodule Perfil do

  defstruct [:nombre, :comida, :pais, :deporte]

end
# m = %Perfil{nombre: "Rodrigo", comida: "Espagueti", pais: "España", deporte: "Fútbol"}
# IO.inspect(m) # Crea un mapa con las claves de la estructura creada pero vacías.
# Podemos ver de qué tipo es un mapa que proviene de una estructura con:
# IO.inspect(m.__struct__)
