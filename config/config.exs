import Config

config :smile_app, SmileApp.Repo,
  database: "smile_app_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :smile_app, ecto_repos: [SmileApp.Repo]
