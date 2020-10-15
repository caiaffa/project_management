# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :project_management,
  ecto_repos: [ProjectManagement.Repo]

# Configures the endpoint
config :project_management, ProjectManagementWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ro+Fo9O9ZDNwYnplFFKy8qHuhN8skUKpElXoYPBpXwuuUVj50sVCzgzek2Z6xGqa",
  render_errors: [view: ProjectManagementWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ProjectManagement.PubSub,
  live_view: [signing_salt: "DH3u+AWU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
