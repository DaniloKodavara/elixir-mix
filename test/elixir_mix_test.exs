defmodule ElixirMixTest do
  use ExUnit.Case
  doctest ElixirMix

  test "greets the world" do
    assert ElixirMix.hello() == :world
  end
end
