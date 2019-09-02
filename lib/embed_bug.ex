defmodule EmbedBug do
  def order_with_data do
    %EmbedBug.Order{
      number: 1,
      cart: %EmbedBug.Cart{type: 1, items: [%EmbedBug.Item{name: "lala"}]}
    }
  end

  def put_embed do
    EmbedBug.order_with_data()
    |> Ecto.Changeset.change()
    |> Ecto.Changeset.put_embed(:cart, %{items: [%{name: "lele"}]})
  end
end
