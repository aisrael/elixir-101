Linux Prerequisites
===

- Install required packages
- `asdf`
- `erlang`
- `elixir`

## Install required packages

For more detailed instructions, see [https://github.com/asdf-vm/asdf-erlang#ubuntu-and-debian](https://github.com/asdf-vm/asdf-erlang#ubuntu-and-debian)

**Ubuntu**

```sh
$ sudo apt update
```

```sh
$ sudo apt -y install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-dev \
libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev libsctp-dev unixodbc-dev xsltproc xmllint fop
```

## Install asdf

`asdf` is an extendable version manager with support for Ruby, Node.js, Elixir, Erlang & more: [https://asdf-vm.com](https://asdf-vm.com/)

Install it following the instructions at [https://asdf-vm.com/#/core-manage-asdf-vm?id=install-asdf-vm](https://asdf-vm.com/#/core-manage-asdf-vm?id=install-asdf-vm)

```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
```

**Add `asdf` to your shell**

Using Bash:

```sh
echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc
```

Logout then log back in, or `source ~/.bashrc` then verify `asdf` installation:

```sh
$ asdf --version
v0.7.8-4a3e3d6
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
$ erl -s erlang halt
Erlang/OTP 22 [erts-10.7.1] [source] [64-bit] [smp:2:2] [ds:2:2:10] [async-threads:1] [hipe]
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
Erlang/OTP 22 [erts-10.7.1] [source] [64-bit] [smp:2:2] [ds:2:2:10] [async-threads:1] [hipe]

Elixir 1.10.3 (compiled with Erlang/OTP 21)
```

You may now proceed to the [Basics](../1-basics/tools.md).
