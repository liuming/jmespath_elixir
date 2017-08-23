defmodule JMESPath do
  @moduledoc """
  # Elixir implementation of JMESPath.

  ## Examples

      iex> JMESPath.search("a.b.c", %{"a" => %{"b" => %{"c" => "C"}}})
      "C"
  """

  @doc """
    Search JSON object using expression
  """
  def search do
    nil
  end

  def search([first | others], json) do
    search(others, json[first])
  end

  def search([], json) do
    json
  end

  def search(expression, json) when is_binary(expression) do
    [first | others] = expression |> String.split(~r/\s*\.\s*/)
    search(others, json[first])
  end
end
