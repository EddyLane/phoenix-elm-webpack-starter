defmodule ElmElixirWorkshop.Json.UserView do

      use ElmElixirWorkshop.Web, :view

    def render("index.json", a) do
      %{data: render_many(a, ElmElixirWorkshop.Json.UserView, "user.json")}
    end
#
#    def render("show.json", %{users: users}) do
#      %{data: render_one(users, ElmElixirWorkshop.Json.UserView, "user.json")}
#    end
#
#    def render("message.json", %{user: user}) do
#      %{id: user.id}
#    end

end
