# SumOfAllLengths.compute([]) => 0
# SumOfAllLengths.compute(["one"]) => 3
# SumOfAllLengths.compute(["one", "two", "three", "four"]) => 11
defmodule SumOfAllOddLengths do
  def compute(list) do
    lengths = Enum.map(list, fn s -> String.length(s) end)
    odd_lengths = Enum.filter(lengths, fn l -> rem(l, 2) == 1 end)
    Enum.reduce(odd_lengths, 0, fn a, b -> a + b end)
  end
end

IO.puts(
  ~s{SumOfAllOddLengths.compute(["one", "two", "three", "four"]) => #{
    SumOfAllOddLengths.compute(["one", "two", "three", "four"])
  }}
)
