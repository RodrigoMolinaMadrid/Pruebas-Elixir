# Los mapas son otras estructuras asociativas.
%{} # Es un mapa vacío
mapa = %{:dia => "lunes", :mes => "octubre"}
IO.inspect(mapa[:dia])
# El las keywordlist solo acepta átomos en las palabras clave.

mapa1 = %{ 1 => "Lunes", 2 => "Martes"}
IO.inspect(mapa1[1])
# En los mapas se pueden aceptar cualquier cosa como clave.
# Si escribimos una clave que no existe el mapa nos devuelve nil.
# Para distinguir entre los nil de los errores de los autenticos nil que pueda haber en el mapa
# se busca de la forma mapa.dia . Pero esto solo se puede hacer si las claves son átomos.

# En los mapas no importa el orden de los elementos sino su asociación clave valor.
