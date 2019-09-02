defmodule EmbedBug.Order do
  use Ecto.Schema

  schema "orders" do
    field(:number, :integer)
    embeds_one(:cart, EmbedBug.Cart, on_replace: :update)
  end
end
