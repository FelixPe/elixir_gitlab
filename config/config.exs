# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
import Config

#
# The file `private.exs` should contain your gitlab
# url and private token
#
#     config(:elixir_gitlab,
#            url_prefix:    "https://git1.example.com/api/v3",
#            private_token: "078uip43j2gong")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"


