defmodule Calculon do

  def operar(func) do
    func.(5,3)
  end
end

IO.puts(Calculon.operar(fn a, b -> a + b end))
#De esta forma en vez de pasar funciones como parámetros, ya que son objetos
#Estas funciones las convertimos en objetos y entonces mediante estas funciones
#anónimas las podemos meter como parámetros.

#También podemos hacer:
IO.puts(Calculon.operar(fn a, b -> rem(a,b) end))

#capturar una función es coger una función que está definida en un módulo y
#hacer que pueda ser una variable.

IO.puts(Calculon.operar(&rem/2))
#Aquí he capturado la función rem/2 y entonces la puedo pasar como parámetro
resto = &rem/2
IO.puts(resto.(5,3))
