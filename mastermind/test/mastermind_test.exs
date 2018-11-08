defmodule MastermindTest do
  use ExUnit.Case
  doctest Mastermind

  test "greets the world" do
    assert Mastermind.hello() == :world
  end
end
