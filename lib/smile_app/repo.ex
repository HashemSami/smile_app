defmodule SmileApp.Repo do
  use Ecto.Repo,
    otp_app: :smile_app,
    adapter: Ecto.Adapters.Postgres
end
