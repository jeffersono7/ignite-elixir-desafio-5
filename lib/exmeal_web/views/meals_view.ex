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

  def render("update.json", %{
        meal: %Meal{
          id: id,
          description: description,
          date: date,
          calories: calories
        }
      }) do
    %{
      meal: %{
        id: id,
        description: description,
        date: date,
        calories: calories
      }
    }
  end
end
