Elixir Basics
===

## Basic Types and Literals

Elixir, similar to Ruby, is a strongly-typed language, but it is not a _statically_ typed language.

That is, while values and expressions belong to a _specific type_, the language's syntax doesn't require you to specify what those types will be.

There _is_ a way to specify types and catch type errors before run-time using `dialyzer` and `dialyxir` but that's a topic for future discussion.

- Integers: `1`, `-1`, `42`, `1_000`
- Floating point: `0.1`, `3.14159265358979`, `1_000.5`
- Atoms: `:atom`
- Strings: `"Hello, world."`

## Collections

### Tuples

- `{}`
- `{1, 2, 3}`
- `{"one", "two", "three"}`
- `{:one, :two, :three}`
- `{1, "two", :three}`

### Lists

- `[]`
- `[1, 2, 3]`
- `["one", "two", "three"]`
- `[:one, :two, :three]`
- `[1, "two", :three]`

### Maps

- `%{}`
- `%{1 => "one", 2 => "two", 3 => "three"}`
- `%{"one" => 1, "two" => 2, "three" => 3}`
- `%{:one => 1, :two => 2, :three => 3}`
- `%{one: 1, two: 2, three: 3}`
- `%{1 => "one", "two" => 2, three: :three}`

### Keyword Lists

- `[one: 1, two: "two", three: :three]`

## Structs

```elixir
iex> defmodule Point do
  defstruct x: 0.0, y: 0.0
end

iex> %Point{}
%Point{x: 0.0, y: 0.0}

iex> %Point{x: 4, y: 5}
%Point{x: 4, y: 5}

iex> %Point{x: "four", y: 5}
%Point{x: "four", y: 5}
```
