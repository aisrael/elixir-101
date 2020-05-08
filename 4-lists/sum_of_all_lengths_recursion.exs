# SumOfAllLengths.compute([]) => 0
# SumOfAllLengths.compute(["one"]) => 3
# SumOfAllLengths.compute(["one", "two", "three"]) => 11
defmodule SumOfAllLengths do
  def compute(list) do
    # initialize
    do_compute(list, 0)
  end

  # check end condition
  def do_compute([], n) do
    n
  end

  # process
  def do_compute([h | tail], n) do
    # recurse
    do_compute(tail, n + String.length(h))
  end
end

IO.puts(
  ~s{SumOfAllLengths.compute(["one", "two", "three"]) => #{
    SumOfAllLengths.compute(["one", "two", "three"])
  }}
)
