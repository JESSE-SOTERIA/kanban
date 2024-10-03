# boards schema for with relationships to accounts and columns
defmodule KanbanBoard.Kanban.Board do
  use Ecto.Schema
  import Ecto.Changeset

  schema "boards" do
    field :title, :string
    belongs_to :team, KanbanBoard.Accounts.Team
    has_many :columns, KanbanBoard.Kanban.Column
    timestamps()
  end

  def changeset(board, params) do
    board
    |> cast(params, [:title, :team_id])
    |> validate_required([:title, :team_id])
  end
end
