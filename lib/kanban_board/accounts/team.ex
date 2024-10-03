defmodule KanbanBoard.Accounts.Team do
  use Ecto.Schema
  import Ecto.Changeset

  schema "teams" do
    field :name, :string
    many_to_many :users, KanbanBoard.Accounts.User, join_through: "teams_users"
    has_many :boards, KanbanBoard.Kanban.Board
    timestamps()
  end

  def changeset(team, params) do
    team
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
