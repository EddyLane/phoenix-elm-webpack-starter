defmodule ElmElixirWorkshop.SessionView do
  use ElmElixirWorkshop.Web, :view

  def render("new.json", assigns) do
    Poison.encode!(assigns.users)
  end
end