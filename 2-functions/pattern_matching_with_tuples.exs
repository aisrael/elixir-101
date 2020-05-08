defmodule Foo do
  def bar({selector, value}) do
    case {selector, value} do
      {:atom, a} -> ":#{a}"
      {:string, s} -> "\"#{s}\""
      _ -> "No match"
    end
  end

  def bar_two(:atom, a), do: ":#{a}"
  def bar_two(:string, s), do: "\"#{s}\""
  # def bar_two(_, _), do: "No match"
end

IO.puts("Foo.bar({:integer, 0}) => #{inspect(Foo.bar({:integer, 0}))}")
IO.puts("Foo.bar({:atom, \"test\"}) => #{Foo.bar({:atom, "test"})}")
IO.puts("Foo.bar({:string, \"s\"}) => #{Foo.bar({:string, "s"})}")

IO.puts("Foo.bar_two(:integer, 0) => #{inspect(Foo.bar_two(:integer, 0))}")
IO.puts("Foo.bar_two(:atom, \"test\") => #{Foo.bar_two(:atom, "test")}")
IO.puts("Foo.bar_two(:string, \"s\") => #{Foo.bar_two(:string, "s")}")
