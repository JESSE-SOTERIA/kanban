# a migration that creates a join table because of a many-to-many relationship between Teams and Users
defmodule KanbanBoard.Repo.Migrations.CreateTeamsUsers do
  use Ecto.Migration

  def change do
    create table(:teams_users, primary_key: false) do
      add :team_id, references(:teams, on_delete: :delete_all)
      add :user_id, references(:users, on_delete: :delete_all)
      timestamps()
    end

    # ensure uniqueness
    create unique_index(:teams_users, [:team_id, :user_id])
  end
end
