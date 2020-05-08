defmodule Lister do
  def length(list) do
    # initialize
    do_length(list, 0)
  end

  # check end condition
  def do_length([], n) do
    n
  end

  # process
  def do_length([h | tail], n) do
    # recurse
    do_length(tail, n + 1)
  end
end

IO.puts("Lister.length([]) => #{Lister.length([])}")
IO.puts("Lister.length([:one]) => #{Lister.length([:one])}")
IO.puts("Lister.length([:one, :two, :three]) => #{Lister.length([:one, :two, :three])}")
