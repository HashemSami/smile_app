defmodule SmileApp.Feedback.RatingTest do
  use SmileApp.DataCase

  # import Ecto.Query
  # alias SmileApp.Repo
  alias SmileApp.Library.Book
  alias SmileApp.Feedback.Rating

  test "insert ratings from a book" do
    from(b in Book)
    |> Repo.all()
    |> hd()
    |> Rating.new()
    |> Rating.changeset(%{stars: 4})
    |> Repo.insert!()
    |> IO.inspect()

    assert SmileApp.hello() == :world
  end
end
