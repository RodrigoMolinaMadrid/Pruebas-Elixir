#las tuplas permiten almacenar en la misma variable varios elementos de distinto tipo
x = {"Cadena",:atomo,10,10.23}
#IO.puts(x) esto dará fallo porque IO.puts() No puede devolver tuplas.
IO.inspect(x)
IO.puts(elem(x,0))
