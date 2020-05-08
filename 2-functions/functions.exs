defmodule Foo do
  def inc_if_positive(x) do
    cond do
      x > 0 -> x + 1
      x < 0 -> -x + 1
      true -> 1_000_000
    end
  end

  def try_case(x) do
    case x do
      -1 -> "negative one"
      0 -> :zero
      1 -> x + 1
      _ -> Foo.inc_if_positive(x)
    end
  end
end

# IO.puts("Foo.inc_if_positive(-1) => #{inspect(Foo.inc_if_positive(-1))}")
# IO.puts("Foo.inc_if_positive(0) => #{inspect(Foo.inc_if_positive(0))}")
# IO.puts("Foo.inc_if_positive(1) => #{inspect(Foo.inc_if_positive(1))}")

IO.puts("Foo.try_case(-2) => #{inspect(Foo.try_case(-2))}")
IO.puts("Foo.try_case(-1) => #{inspect(Foo.try_case(-1))}")
IO.puts("Foo.try_case(0) => #{inspect(Foo.try_case(0))}")
IO.puts("Foo.try_case(1) => #{inspect(Foo.try_case(1))}")
IO.puts("Foo.try_case(2) => #{inspect(Foo.try_case(2))}")
