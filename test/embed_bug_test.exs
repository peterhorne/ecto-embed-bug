defmodule EmbedBugTest do
  use EmbedBug.RepoCase
  doctest EmbedBug

  test "partial update" do
    {:ok, order} =
      EmbedBug.Repo.insert(%EmbedBug.Order{
        number: 1,
        cart: %EmbedBug.Cart{type: 1, items: [%EmbedBug.Item{name: "lala"}]}
      })

    IO.inspect(order, label: "order")

    order2 =
      order
      |> Ecto.Changeset.change()
      |> Ecto.Changeset.put_embed(:cart, %{items: []})

    IO.inspect(order2, label: "order2")

    EmbedBug.Repo.update(order2)
  end
end
