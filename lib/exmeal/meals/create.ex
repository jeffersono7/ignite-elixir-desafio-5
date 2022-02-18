defmodule Exmeal.Meals.Create do
  alias Exmeal.{Meal, Repo, Error}

  def call(params) do
    Meal.changeset(params)
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Meal{} = meal}), do: {:ok, meal}

  defp handle_insert({:error, _changeset}) do
    {:error, %Error{result: "Invalid params", status: :bad_request}}
  end
end
