defmodule ExmealWeb.MealsController do
  use ExmealWeb, :controller

  alias Plug.Conn
  alias Exmeal.Meals.{Create, Delete}

  action_fallback(ExmealWeb.FallbackController)

  def create(%Conn{} = conn, params) do
    with {:ok, meal} <- Create.call(params) do
      conn
      |> put_status(:created)
      |> render("create.json", meal: meal)
    end
  end

  def delete(%Conn{} = conn, %{"id" => id}) do
    with {:ok, meal} <- Delete.call(id) do
      conn
      |> put_status(:no_content)
      |> text("")
    end
  end
end
