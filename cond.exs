lluvia = 50
mensaje = if lluvia == 0 do
  "No ha llovido"
else
  if lluvia <= 30 do
    "Ha llovido poco"
  else
    if lluvia <= 50 do
      "Ha llovido medio"
    else
      if lluvia <= 90 do
        "Ha llovido mucho"
      else
        "Ha caido el diluvio"
      end
    end
  end
end
IO.puts(mensaje)
# Esta construcción es un rollo de hacer y por tanto elixir
# tiene una herramienta propia para hacer todo esto.
cond do
  lluvia == 0 -> "No ha llovido"
  lluvia <= 30 -> "Ha llovido un poco"
  lluvia <= 50 -> "Ha llovido un rato"
  lluvia <= 90 -> "Ha llovido bastante"
  lluvia > 90 -> "Ha caido la del pulpo"
end
# nos vaa devolver el primer resultado cuya condición se cumple.
