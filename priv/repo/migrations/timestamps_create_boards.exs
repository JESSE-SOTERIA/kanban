defmodule KanbanBoard.Repo.Migrations.CreateBoards do
  use Ecto.Migration

  def change do
    create table(:boards) do
      # the title of the board
      add :title, :string, null: false
      add :description, :string
      # foreign key to associate a user with a board
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

    # index for quick lookups by user.
    create index(:boards, [:user_id])
  end
end
