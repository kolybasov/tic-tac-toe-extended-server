# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ttt_server,
  namespace: TTTServer

# Configures the endpoint
config :ttt_server, TTTServer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vHz4LG32X+sa8jF9ylT23WKNActUoUj4qjm9UDexGDcjAw/+28qcQMKExPvFEpcO",
  render_errors: [view: TTTServer.ErrorView, accepts: ~w(json)],
  pubsub: [name: TTTServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
