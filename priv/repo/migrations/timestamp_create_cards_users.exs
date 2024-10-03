defmodule KanbanBoard.Repo.Migrations.CreateCardsUsers do
  use Ecto.Migration

  def change do
    create table(:cards_users) do
      add :card_id, references(:cards)
      add :user_id, references(:users)
      timestamps()
    end

    create_unique_index(:cards_users, [:card_id, :user_id])
  end
end
