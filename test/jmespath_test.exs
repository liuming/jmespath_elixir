defmodule JMESPathTest do
  use ExUnit.Case
  doctest JMESPath

  test "greets the world" do
    assert JMESPath.search() == nil
  end
end
