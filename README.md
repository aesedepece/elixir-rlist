# Rlist

A wrapper around Elixir's Lists that makes cheaper pushing items to them.

Elixir's Lists are linked, so pushing an item to the end of a list means
creating a new list with the pushed element and then put all the elements
from the old list into the head of the new list, one by one, in reverse
order.

This wrapper implements some of the most common Enum and List methods in
a reverse fashion so when you push an element to a ArrayList it is actually
put as the head, which is much more efficient for cases when you make
thousands of pushes and only a few reads.

## Installation

  1. Add rlist to your list of dependencies in `mix.exs`:

        def deps do
          [{:rlist, "~> 0.0.1"}]
        end

## Usage

```elixir
import Rlist
rlist = []
  |> ArrayList.push("hello")
  |> ArrayList.push("fellow")
  |> ArrayList.push("alchimists")

# Prints ["alchimists", "fellow", "hello"]
rlist |> IO.inspect

# Prints "hello"
rlist |> ArrayList.first |> IO.puts
```
