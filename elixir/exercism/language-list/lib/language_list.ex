defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove(list), do: List.delete_at(list, 0)

  def first(list), do: List.first(list)

  def count(list), do: length(list)

  def functional_list?(list), do: Enum.member?(list, "Elixir")
end