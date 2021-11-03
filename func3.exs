defmodule Func3 do
  def print2({:ok,x}) do
    IO.puts("Todo ha salido bien: #{x}")
  end

  def print2({:error,_x}) do
    IO.puts("Algo ha salido mal")
  end

end
