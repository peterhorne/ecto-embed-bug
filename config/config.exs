use Mix.Config

config :embed_bug, EmbedBug.Repo,
  database: "ecto_embed_bug",
  username: "ecto_embed_bug",
  password: "ecto_embed_bug",
  hostname: "localhost"

config :embed_bug, ecto_repos: [EmbedBug.Repo]

import_config "#{Mix.env()}.exs"
