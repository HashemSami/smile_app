defmodule SmileApp.Library.Book do
  use Ecto.Schema
  import Ecto.Changeset
  alias SmileApp.Feedback.Rating

  schema "books" do
    field(:title, :string)
    field(:isbn, :string)
    field(:description)
    field(:published_on, :date, default: nil)
    field(:status, :string, default: "working")

    timestamps()

    has_many(:ratings, Rating)
  end

  def changeset(book, params \\ %{}) do
    book
    |> cast(params, [:title, :isbn, :description, :publish_on, :status])
    |> validate_required([:title, :isbn, :status])
    |> validate_inclusion(:status, ~w[working published beta retired])
  end
end
