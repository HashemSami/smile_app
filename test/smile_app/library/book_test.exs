defmodule SmileApp.Library.BookTest do
  use ExUnit.Case

  import Ecto.Query
  alias SmileApp.Repo
  alias SmileApp.Library.Book

  test "get all rows" do
    from(Book)
    |> Repo.all()

    # |> IO.inspect()

    assert SmileApp.hello() == :world
  end

  test "select columns in rows and return struct" do
    from(b in Book, select: struct(b, [:id, :title]))
    |> Repo.all()

    # |> IO.inspect()

    assert SmileApp.hello() == :world
  end

  test "select columns in rows and return map" do
    from(b in Book, select: map(b, [:id, :title, :status]))
    |> Repo.all()

    # |> IO.inspect()

    assert SmileApp.hello() == :world
  end

  test "select columns in rows and change the data to another required shape" do
    # transform the data to a list of tuple
    from(b in Book, select: {b.id, b.title})
    |> Repo.all()

    # transform the data to a list of lists
    from(b in Book, select: [b.id, b.title])
    |> Repo.all()

    assert SmileApp.hello() == :world
  end

  test "select columns in rows and change the data to template of mix of data types" do
    # transform the data to a list of tuple
    from(b in Book, select: %{isbn: b.isbn, book: {b.title, b.status}})
    |> Repo.all()
    |> IO.inspect()

    assert SmileApp.hello() == :world
  end
end
