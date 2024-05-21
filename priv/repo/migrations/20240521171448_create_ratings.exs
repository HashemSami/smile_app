defmodule SmileApp.Repo.Migrations.CreateRatings do
  use Ecto.Migration

  def change do
    create table(:ratings) do
      add :stars, :integer
      add :book_id, references(:book)

    end

    create unique_index(:ratings, [:book_id])
  end
end
