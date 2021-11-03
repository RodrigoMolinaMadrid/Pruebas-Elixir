defmodule Impuestos do
  def impuesto(precio,tipo) do
    #Impuestos.porcentaje(tipo)*precio
    porcentaje(tipo)*precio #al ser porcentaje una función del mismo módulo podemos
    #no escribir en nombre del módulo
  end

  def total(precio,tipo) do
    #( 1 + Impuestos.porcentaje(tipo))*precio
    ( 1 + porcentaje(tipo))*precio
  end
#Si queremos que no se pueda acceder desde fuera a la  función porcentaje, porque es "privada"
  defp porcentaje(tipo) do
    cond do
      tipo == :normal -> 0.21
      tipo == :reducido -> 0.10
      tipo == :superreducido -> 0.04
    end
  end

end
IO.inspect(Impuestos.impuesto(125.5,:normal))
#IO.inspect(Impuestos.impuesto(String.to_float(String.trim(IO.gets("Introduce el precio del objeto con decimales: "))),:reducido))
IO.inspect(Impuestos.total(125.5,:normal))
#IO.inspect(Impuestos.porcentaje(:normal))
#Esta última línea da fallo porque Impuestos.porcentaje() es privada
