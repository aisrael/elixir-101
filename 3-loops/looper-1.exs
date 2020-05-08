defmodule Looper do
  # Print the numbers from 1 to x
  def loop(x) do
    if x > 0 do
      loop(x - 1)
      IO.puts(x)
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
