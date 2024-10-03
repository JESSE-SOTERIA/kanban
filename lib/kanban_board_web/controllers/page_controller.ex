defmodule KanbanBoardWeb.PageController do
  use KanbanBoardWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  # action to render a page "index.html"
  def index(conn, _params) do
    render(conn, "index.html")
  end
end
