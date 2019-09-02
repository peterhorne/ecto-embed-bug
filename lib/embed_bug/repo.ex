defmodule EmbedBug.Repo do
  use Ecto.Repo,
    otp_app: :embed_bug,
    adapter: Ecto.Adapters.Postgres
end
