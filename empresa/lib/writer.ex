# Todo este script es para ser capaces de escribir en un archivo .jason (o el tipo de archivo que queramos)
# la información almacenada en nuestras listas con elementos que son estructuras de la forma definida en el
# archivo empresa.ex

# Todas las funciones privadas son funciones auxiliares que hacen procesos intermedios
# Con la función final write(lista) vamos llamando a las funciones intermedias y recogiendo sus resultados
# Para finalmente obtener el resultado deseado
defmodule Empresa.Writer do
  # Definimos el módulo en donde estarán todas las funciones
  alias Empresa.Empleado, as: Empleado
  # Los alias son locales, funcionan hasta el end del módulo
  defp to_map (%Empresa.Empleado{nombre: n, posicion: p, sueldo: s}) do
    %{"nombre" => n, "posicion" => p, "sueldo" => s}
  end
  # Esta función transforma nuestra info con type Empresa.empleado a map

  defp to_map(_x) do
    nil
  end
  # Esto te devuelve un nil si el parámetro de entrada no tiene la estructura debida

  defp to_jason(m) do
    {:ok, jason_version } = Jason.encode(m)
    jason_version
  end
  # Esta nos pasa a cadena un mapa que es justo lo que hace Jason.encode

  defp dump(str) do
    File.write("empleados.jason",str)
  end
  # Finalmente esta nos vuelca la información en el archivo "empleados.jason" a través de la funcion:
  # File.write()

  def write(empleados) do
    empleados
    |> Enum.map(&to_map/1)
    |> Enum.filter(fn
      nil -> false
      _ -> true
    end)
    |> to_jason
    |> dump
  end
  # Esta es la función final pública a la que se tiene acceso desde fuera y que va llamando a todas
  # Las funciones auxiliares.
end
