Elixir Toolchain
===

## `iex`

The [Elixir Interactive Shell](https://hexdocs.pm/iex/IEx.html), or `iex`, is an invaluable tool to quickly try out Elixir code, or even to debug complex Elixir applications.

```sh
$ iex
Erlang/OTP 22 [erts-10.7.1] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Interactive Elixir (1.10.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)>
```

(Press `Ctrl+C` or `Ctrl+\` to exit `iex` and return to the operating system shell.)

The number in parenthesis at the `iex` prompt is the "line number", and can be used to [retrieve previously evaluated values](https://medium.com/@erichkist/elixir-tips-1-copy-last-result-in-iex-871f148d7f41).

For some general help with using `iex`, simply type `h` then press Enter:

```
iex(1)> h

                                  IEx.Helpers

Welcome to Interactive Elixir. You are currently seeing the documentation for
the module IEx.Helpers which provides many helpers to make Elixir's shell more
joyful to work with.

This message was triggered by invoking the helper h(), usually referred to as
h/0 (since it expects 0 arguments).
.
.
.
```

Throughtout this tutorial, we will frequently use `iex` to quickly demonstrate or try out Elixir code, but we will disregard the line number (the `(1)` above). For example, the following example shows how to get the current OTP version in Elixir:

```elixir
iex> :erlang.system_info(:otp_release)
'22'
```

## `mix`

Mix is a code generator, dependency management, build tool, and packaging tool all in one, among other things.

```bash
$ mix --version
Erlang/OTP 22 [erts-10.7.1] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Mix 1.10.3 (compiled with Erlang/OTP 21)
```

We'll explore `mix` more specifically as we get to later sections.

For now, let's just install [Hex](https://hex.pm), the package manager for the Elixir ecosystem, and [rebar](https://github.com/erlang/rebar3):

```
$ mix local.hex
Are you sure you want to install "https://repo.hex.pm/installs/1.10.0/hex-0.20.5.ez"? [Yn] y
* creating .asdf/installs/elixir/1.10.3/.mix/archives/hex-0.20.5

$ mix local.rebar
* creating .asdf/installs/elixir/1.10.3/.mix/rebar
* creating .asdf/installs/elixir/1.10.3/.mix/rebar3
```

Next, let's wrap our heads around [Elixir Basics](basics.md).
