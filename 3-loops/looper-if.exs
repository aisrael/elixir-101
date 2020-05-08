defmodule Looper do
  # Print the numbers from 1 to x
  def loop(x), do: do_loop(x, 1)

  def do_loop(x, i) do
    if i <= x do
      IO.puts(i)
      do_loop(x, i + 1)
    end
  end
end

IO.puts("Looper.loop(0)")
Looper.loop(0)
IO.puts("Looper.loop(1)")
Looper.loop(1)
IO.puts("Looper.loop(2)")
Looper.loop(2)
IO.puts("Looper.loop(10)")
Looper.loop(10)
