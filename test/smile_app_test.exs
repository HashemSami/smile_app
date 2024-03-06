defmodule SmileAppTest do
  use ExUnit.Case
  doctest SmileApp

  test "greets the world" do
    assert SmileApp.hello() == :world
  end
end
