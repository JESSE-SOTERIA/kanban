defmodule KanbanBoard.Repo.Migrations.CreateColumns do
  use Ecto.Migration

  def change do
    create table(:columns) do
      add :title, :string, null: false
      add :position, :integer
      # link via foreign key to boards
      add :board_id, references(:boards, on_delete: :delete_all)

      timestamps()
    end


    # index for quick lookups
    create index(:columns, [:board_id])
  end
end
