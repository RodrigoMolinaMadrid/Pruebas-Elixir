admin=false
if !admin do
  IO.puts("No tiene permisos de administrador")
end
# unless es un if negado
unless admin do
  IO.puts("No tiene permisos de administrador")
else
  IO.puts("Tiene permisos de administrador")
end
