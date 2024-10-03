defmodule KanbanBoard.Kanban.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :title, :string
    field :description, :string
    field :position, :integer
    belongs_to :column, KanbanBoard.Kanban.Column
    timestamps()
  end

  def changeset(card, params) do
    card
    |> cast(params, [:title, :description, :position])
    |> validate_required([:title])
  end
end
