defmodule KanbanBoard.Repo.Migrations.CreateTeams do
  use Ecto.Migration

  def change do
    create table(:teams) do
      add :name, :string, null: false
      add :description, :text

      timestamps()
    end
  end
end
