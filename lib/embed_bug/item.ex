defmodule EmbedBug.Item do
  use Ecto.Schema

  @primary_key false

  embedded_schema do
    field(:name)
  end
end
