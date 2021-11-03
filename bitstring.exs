# cadena de bits
# Podemos poner números con la longitud de bits que sea.
IO.inspect(<<14::4>>)
IO.inspect(<<1::2,3::2>> == <<7::4>>) # 01 11 = 0111 que correspode con el 7::4 Luego la afirmación dará true.
# Si elixir no te dice nada del size (el # de bits), por defecto son 8. Y tenderá a agruparlo todo en "cajas" de 8 bits
# Un binary es una bitstring donde el # de bits es múltiplo de 8

# Las cadenas de caracteres son bitstrings
IO.inspect(<<104, 111, 108, 97>>) # Esto es hola en formato bitstring
