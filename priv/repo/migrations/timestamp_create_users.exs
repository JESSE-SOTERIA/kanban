# @TODO make sure this is accurate.

# migaration for users.
defmodule KanbanBoard.Repo.Migrations.Users do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :team_id, references(:teams)
      add :user_id, references(:users)
      timestamps()
    end

    create unique_index(:teams_users, [:team_id, :user_id])
  end
end
