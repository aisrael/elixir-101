defmodule Looper do
  # Print the numbers from 1 to x
  def loop(x) do
    # initialize recursion
    do_loop(x, x)
  end

  # check end condition
  def do_loop(_, 0), do: nil

  def do_loop(x, i) do
    # process
    IO.puts(x - i + 1)
    # recurse
    do_loop(x, i - 1)
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
