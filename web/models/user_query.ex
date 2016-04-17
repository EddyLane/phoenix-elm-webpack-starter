defmodule ElmElixirWorkshop.UserQuery do
  import Ecto.Query
  alias ElmElixirWorkshop.User

  def by_email(email) do
    from u in User, where: u.email == ^email
  end
end