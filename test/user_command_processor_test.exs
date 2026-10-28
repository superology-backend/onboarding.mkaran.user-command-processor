defmodule UserCommandProcessorTest do
  use ExUnit.Case
  doctest UserCommandProcessor

  test "greets the world" do
    assert UserCommandProcessor.hello() == :world
  end
end
