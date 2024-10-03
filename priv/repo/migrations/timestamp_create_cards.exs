defmodule KanbanBoard.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :title, :string, null: false
      add :description, :string
      add :position, :integer
      add :column_id, references(:columns, on_delete: :delete_all)
      # optional reference to a user assogned to the card.
      add :assigned_user_id, references(:users, on_delete: :nilify_all)
    end

    create index(:cards, [:column_id])
    create index(:cards, [:assigned_user_id])
  end
end
