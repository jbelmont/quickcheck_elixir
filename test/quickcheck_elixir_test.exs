defmodule QuickcheckElixirTest do
  use ExUnit.Case
  use EQC.ExUnit
  doctest QuickcheckElixir

  property "Reverse strings" do
    forall string <- utf8 do
      ensure String.reverse(String.reverse(string)) == string
    end
  end
end
