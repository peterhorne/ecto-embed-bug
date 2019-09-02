use Mix.Config

config :embed_bug, EmbedBug.Repo,
  database: "ecto_embed_bug_test",
  username: "ecto_embed_bug_test",
  password: "ecto_embed_bug_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
