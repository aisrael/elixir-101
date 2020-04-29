macOS Prerequisites
===

- Homebrew
- `asdf`
- `erlang`
- `elixir`

## Install Homebrew

Homebrew bills itself as the missing package manager for macOS.

Follow the instructions on [https://brew.sh](https://brew.sh/) to install:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## Install `asdf`

`asdf` is an extendable version manager with support for Ruby, Node.js, Elixir, Erlang & more: [https://asdf-vm.com](https://asdf-vm.com/)

Install it using Homebrew

```sh
brew install asdf
```

## Install Erlang

Using `asdf`, first install Erlang. As of this writing, the latest stable version is 22.3.3:

```sh
asdf plugin add erlang
asdf install erlang 22.3.3
```

(The last command above can take a while to finish, and will need to download about 53.2MB of data.)

Afterwards, set the global erlang version:

```sh
asdf global erlang 22.3.3
```

Verify Erlang installation:

```sh
$ erl -s halt
Erlang/OTP 22 [erts-10.7.1] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]
```

## Install Elixir

Again using `asdf`, now install Elixir. As of this writing, the latest stable version is 1.10.3:

```sh
asdf plugin add elixir
asdf install elixir 1.10.3
asdf global elixir 1.10.3
```

Verify Elixir installation:

```sh
$ elixir --version
Erlang/OTP 22 [erts-10.7.1] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Elixir 1.10.3 (compiled with Erlang/OTP 21)
```

You may now proceed to the [Basics](/1-basics/basics).
