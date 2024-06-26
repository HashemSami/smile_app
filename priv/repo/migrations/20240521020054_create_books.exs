defmodule BabinjazEctoDb.Repo.Migrations.CreateBooks do
  use Ecto.Migration
  def change do
    create table(:books) do
      add :title, :string
      add :isbn, :string
      add :description, :text
      add :status, :string, default: "working"
      add :published_on, :date

      timestamps()
    end
  end
  unique_index("books", [:isbn])
end
