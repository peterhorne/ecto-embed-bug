defmodule EmbedBug.RepoCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias EmbedBug.Repo

      import Ecto
      import Ecto.Query
      import EmbedBug.RepoCase

      # and any other stuff
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(EmbedBug.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(EmbedBug.Repo, {:shared, self()})
    end

    :ok
  end
end
