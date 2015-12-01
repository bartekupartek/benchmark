use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :elixir_vs_crystal, ElixirVsCrystal.Endpoint,
  secret_key_base: "qXWxPezWPpVoep7CPiJUHADTFCBCTwqae95IptGzjyF260MuYfnOcNHpt01VaK9r"

# Configure your database
config :elixir_vs_crystal, ElixirVsCrystal.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "bartek",
  password: "",
  database: "elixir_vs_crystal_dev",
  pool_size: 20
