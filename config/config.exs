# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :sentest, Sentest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rvVwgjWROaBqUD1PluTB3JEgVydHCARsIZ3lR4G4ez9n3sT2ajara4q83VfZl4HA",
  render_errors: [view: Sentest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Sentest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
