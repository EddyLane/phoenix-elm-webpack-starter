defmodule ElmElixirWorkshop.MessageView do
  use ElmElixirWorkshop.Web, :view

  def render("index.json", %{messages: messages}) do
    %{data: render_many(messages, ElmElixirWorkshop.MessageView, "message.json")}
  end

  def render("show.json", %{message: message}) do
    %{data: render_one(message, ElmElixirWorkshop.MessageView, "message.json")}
  end

  def render("message.json", %{message: message}) do
    %{id: message.id,
      content: message.content}
  end
end