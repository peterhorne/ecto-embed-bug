defmodule EmbedBug.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :number, :integer
      add :cart, :map
    end
  end
end
