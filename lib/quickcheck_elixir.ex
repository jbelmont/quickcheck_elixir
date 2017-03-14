defmodule QuickcheckElixir do
  @moduledoc """
  Documentation for QuickcheckElixir.
  """
  
  def quickCheckExample do
    forall {Xs, list(int)} do
      forall {Ys,list(int)} do
        ensure(:lists.reverse(Xs++Ys) == :lists.reverse(Xs)++ :lists.reverse(Ys))
      end
    end
  end
end
