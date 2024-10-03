defmodule KanbanBoard.Kanban.Column do
  use Ecto.Schema
  import Ecto.Changeset

  schema "columns" do
    field :title, :string
    field(:position, :integer)
    belongs_to :board, KanbanBoard.Kanban.Board
    has_many :cards, KanbanBoard.Kanban.Card
    timestamps()
  end

  def changeset(column, params) do
    column
    |> cast(params, [:title, :position])
    |> validate_required([:title])
  end
end
