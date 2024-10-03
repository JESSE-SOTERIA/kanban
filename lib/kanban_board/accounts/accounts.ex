defmodule KanbanBoard.Accounts.Accounts do
  import Ecto.Query
  alias KanbanBoard.Repo
  alias KanbanBoard.Accounts.{User, Team}

  # create new user
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  # get a user by ID
  def get_user!(id), do: Repo.get!(User, id)

  # uppdate a user
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  # delete a user
  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  # list all users
  def list_all_users do
    Repo.all(User)
  end
end
