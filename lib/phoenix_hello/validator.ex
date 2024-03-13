defmodule PhoenixHello.Validator do
  @doc """
    Function should return:
      "yes" if a > b
      "no" if a < b

  """
  def is_bigger?(a, b) do
    if a > b do
      "yes"
    else
      "no"
    end
  end
end
