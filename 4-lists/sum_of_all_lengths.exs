# SumOfAllLengths.compute([]) => 0
# SumOfAllLengths.compute(["one"]) => 3
# SumOfAllLengths.compute(["one", "two", "three", "four"]) => 11
defmodule SumOfAllOddLengths do
  def compute(list) do
    is_even = &(rem(&1, 2) == 0)

    list
    |> Enum.map(&String.length/1)
    |> Enum.reject(is_even)
    |> Enum.sum()
  end
end

IO.puts(
  ~s{SumOfAllOddLengths.compute(["one", "two", "three", "four"]) => #{
    SumOfAllOddLengths.compute(["one", "two", "three", "four"])
  }}
)

n = 10_000_000

IO.puts(
  Enum.map(1..n, &"#{&1}")
  |> SumOfAllOddLengths.compute()
)
