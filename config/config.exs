# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :myproject,
  ecto_repos: [Myproject.Repo]

# Configures the endpoint
config :myproject, MyprojectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YV2NgJP2JUOP6nGfWBSkgOCH6fozyZBC/eSi0me5Z8J0N5TFKwamLZyxBRC8UjP1",
  render_errors: [view: MyprojectWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Myproject.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
