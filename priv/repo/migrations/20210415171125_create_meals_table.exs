defmodule Exmeal.Repo.Migrations.CreateMealsTable do
  use Ecto.Migration

  def change do
    create table("meals") do
      add(:description, :string, not_null: true)
      add(:date, :date, not_null: true)
      add(:calories, :integer, not_null: true)

      timestamps()
    end
  end
end
