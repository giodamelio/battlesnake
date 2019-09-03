defmodule SugarTest do
  use ExUnit.Case
  doctest Sugar

  test "greets the world" do
    assert Sugar.hello() == :world
  end
end
