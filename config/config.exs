# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wolpay,
  ecto_repos: [Wolpay.Repo]

# Configures the endpoint
config :wolpay, WolpayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "USRi+c+95GVgBP7KQL+1YmLlFvU/2Wyip2rlCIv0qOMZEETvssX+RWfqq2Ej48SK",
  render_errors: [view: WolpayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Wolpay.PubSub,
  live_view: [signing_salt: "z2itNwm6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
