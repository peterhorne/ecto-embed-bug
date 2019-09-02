defmodule EmbedBug.Cart do
  use Ecto.Schema

  @primary_key false

  embedded_schema do
    field(:type, :integer)
    embeds_many(:items, EmbedBug.Item, on_replace: :delete)
  end
end
