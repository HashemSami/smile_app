defmodule SmileApp.Feedback.Rating do
  use Ecto.Schema
  import Ecto.Changeset

  alias SmileApp.Library.Book

  schema "ratings" do
    field(:stars, :integer)

    timestamps()

    belongs_to(:book, Book)
  end

  # building an association function before applying the changeset
  # this will also force the user to pass book struct before
  # adding the rating
  def new(book) do
    Ecto.build_assoc(book, :ratings)
  end

  def changeset(rating, params \\ %{}) do
    rating
    |> cast(params, [:stars, :book_id])
    |> validate_required([:stars, :book_id])
  end
end
