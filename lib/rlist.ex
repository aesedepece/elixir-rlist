defmodule Rlist do
  @moduledoc "Wrapper around Elixir Lists for efficiency and convenience"

  def at(list, i, default \\ nil) do
    Enum.at list, -(i + 1), default
  end

  def first(list), do: List.last list

  def last(list), do: List.first list

  def reverse(list), do: Enum.reverse list

  def member?(list, item), do: Enum.member? list, item

  def count(list), do: Enum.count list

  def replace_at(list, i, val) do
    len = count list
    i = len - i - 1
    List.replace_at list, i, val
  end

  def push(list, item), do: [item | list]

  def concat(tail, head), do: head ++ tail

  def find_index(list, fun), do: Enum.find_index list, fun

  def filter(list, fun), do: Enum.filter list, fun

  def map(list, fun), do: Enum.map list, fun

  def with_index(list), do: Enum.with_index list

  def slice(list, first..last) do
    Enum.slice list, -(last+1)..-(first+1)
  end

  def drop(list, qty) do
    Enum.slice list, 0..-(qty+1)
  end

  def reverse_drop(list, qty) do
    if qty > 0 do
      tl reverse_drop(list, qty - 1)
    else
      list
    end
  end

  def drop_last(list) do
    tl list
  end

end

