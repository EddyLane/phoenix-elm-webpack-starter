# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElmElixirWorkshop.Repo.insert!(%ElmElixirWorkshop.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ElmElixirWorkshop.User

defaultUser = User.create_changeset(%User{}, %{name: "Eddy", email: "eddy@uvd.co.uk", password: "Eddy" })

ElmElixirWorkshop.Repo.insert!(defaultUser)