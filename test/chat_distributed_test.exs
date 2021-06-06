defmodule ChatDistributedTest do
  use ExUnit.Case
  doctest ChatDistributed

  test "greets the world" do
    assert ChatDistributed.hello() == :world
  end
end
