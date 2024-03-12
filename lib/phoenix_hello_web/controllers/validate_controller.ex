defmodule PhoenixHelloWeb.ValidateController do
  use PhoenixHelloWeb, :controller

  alias PhoenixHello.Validator

  def index(conn, _params) do
    render(conn, :index, is_bigger: "none", invalid_value: false, number: "")
  end

  def validate(conn, %{"number" => number}) do
    {number, _} = Integer.parse(number)
    is_bigger = Validator.is_bigger?(number, 2)
    IO.inspect(number, label: "number")
    IO.inspect(is_bigger, label: "is bigger")
    render(conn, :index, is_bigger: is_bigger, invalid_value: false, number: number)
  rescue
    _ ->
      render(conn, :index, invalid_value: true)
  end
end
