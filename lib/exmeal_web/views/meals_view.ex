defmodule ExmealWeb.MealsView do
  use ExmealWeb, :view

  alias Exmeal.Meal

  def render("create.json", %{
        meal: %Meal{
          id: id,
          description: description,
          date: date,
          calories: calories
        }
      }) do
    %{
      meal: %{
        meal: %{
          id: id,
          description: description,
          date: date,
          calories: calories
        }
      },
      message: "Meal created!"
    }
  end
end
