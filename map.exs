# La función Enum.map() recorre una lista y le aplica la función que construyamos mapea

a = Enum.map([1,2,3,4,5],fn x -> x*x end)
IO.inspect(a)

b = Enum.map(%{a: 1, b: 2, c: 3, d: 4}, fn {k,_} -> k end) # Aquí estamos haciendo Pattern Matching
c = Enum.map(%{a: 1, b: 2, c: 3, d: 4 },fn {k,v} -> "#{k} = #{v}"  end)
IO.inspect(b)
IO.inspect(c)
