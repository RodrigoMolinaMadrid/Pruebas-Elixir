defmodule RecursionListas do
  def dobles([]) do
    []
  end

  def dobles([cabeza | cola]) do
    [cabeza*2 | dobles(cola)]
  end

  def pares([]) do
    []
  end

  def pares([cabeza | cola]) when rem(cabeza,2) == 0 do
    [cabeza | pares(cola)]
  end

  def pares([cabeza | cola]) do
    pares(cola)
  end

  def suma([]) do
    acc = 0
  end

  defp suma([],acc) do
    acc
  end
  def suma([cabeza | cola]) do
    acc = 0
    suma([cabeza | cola], acc)
  end
  defp suma([cabeza | cola], acc) do
    acc = acc + cabeza
    suma(cola,acc)
  end
end
