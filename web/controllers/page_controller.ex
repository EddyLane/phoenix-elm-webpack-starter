defmodule ElmElixirWorkshop.PageController do
  use ElmElixirWorkshop.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
