defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language] ++ list
  end

  def remove([_|tail]) do
    tail
  end

  def first([head|_tail]) do
    head
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    x = "Elixir"
    x in list
  end
end
