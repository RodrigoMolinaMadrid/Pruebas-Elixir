# Aplica un filtro a cada elemento de la lista que devuelva true al aplicar la función que le pasemos.
a = Enum.filter([1,2,3,4,5,6,7,8,9],fn x -> rem(x,2) == 1 end)
IO.inspect(a)
b = Enum.filter(%{a: 1,b: 2, c: 3, d: 4, e: 5},fn {_, v} -> rem(v,2) == 0 end)
IO.inspect(b)
