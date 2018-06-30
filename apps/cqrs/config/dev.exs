use Mix.Config

# Configure your database
config :cqrs, Cqrs.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "cqrs_dev",
  hostname: "localhost",
  pool_size: 10
