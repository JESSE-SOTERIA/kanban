defmodule KanbanBoard.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :hashed_password, :string
    has_many :boards, KanbanBoard.Kanban.Board
    timestamps()
  end

  def changeset(user, params) do
    user
    |> cast(params, [:name, :email, :password])
    |> validate_required([:name, :email, :password])
    |> unique_constraint(:email)
    |> hash_password()
  end

  defp hash_password(changeset) do
    # @TODO implement hahsing logic (using comeonin or argon2 libraries)
    changeset
  end
end
