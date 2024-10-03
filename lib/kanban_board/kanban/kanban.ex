defmodule KanbanBoard.Kanban.Kanban do
  import Ecto.Query
  aleas(KanbanBoard.Repo)
  alias KanbanBoard.Kanban.{Board, Column, card}

  # CRUD for boards
  def create_board(attrs \\ %{}) do
    %Board{}
    |> Board.changeset(attrs)
    |> Repo.isert()
  end

  def get_board!(id), do: Repo.get!(Board, id)

  def update_board(%Board{} = board, attrs) do
    board
    |> Board.changeset(attrs)
    |> Repo.update()
  end

  def delete_board(%Board{} = board) do
    Repo.delete(board)
  end

  def list_all_boards do
    Repo.all(Board)
  end

  # CRUD for columns
  def create_column(attrs \\ %{}) do
    %Column{}
    |> Column.changeset(attrs)
    |> Repo.insert()
  end

  def get_column!(id), do: Repo.get!(Column, id)

  def update_column(%Column{} = column, attrs) do
    column
    |> Column.changeset(attrs)
    |> Repo.update()
  end

  def delete_column(%Column{} = column) do
    Repo.delete(column)
  end

  def list_all_columns do
    Repo.all(Column)
  end

  # CRUD for cards
  def create_card(attrs \\ %{}) do
    %Card{}
    |> Card.changeset(attrs)
    |> Repo.insert()
  end

  def get_card!(id), do: Repo.get!(card, id)

  def update_card(%Card{} = card, attrs) do
    card
    |> Card.changeset(attrs)
    |> Repo.update()
  end

  def delete_card(%Card{} = card) do
    Repo.delete(card)
  end

  def list_all_cards do
    Repo.all(Card)
  end
end
