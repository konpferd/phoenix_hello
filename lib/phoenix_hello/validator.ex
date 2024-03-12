defmodule PhoenixHello.Validator do
  def is_bigger?(a, b) do
    if a < b, do: "yes", else: "no"
  end
end
