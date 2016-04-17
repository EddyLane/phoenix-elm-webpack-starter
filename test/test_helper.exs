ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ElmElixirWorkshop.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ElmElixirWorkshop.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ElmElixirWorkshop.Repo)

