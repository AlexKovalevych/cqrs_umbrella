# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cqrs_web,
  namespace: CqrsWeb,
  ecto_repos: [Cqrs.Repo]

# Configures the endpoint
config :cqrs_web, CqrsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "L33beOEqD0ev5rs6du3sjzQNTjCt6Z2TYd053nrlZunNZNuZO1QWJm1rd2hxOixb",
  render_errors: [view: CqrsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: CqrsWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :cqrs_web, :generators,
  context_app: :cqrs

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
