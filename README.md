# Elixir vs Crystal vs Postgrest vs Ruby

To start:

  1. brew update
  2. install elixir & crystal-lang & ruby & postgrest
  3. go to elixir project and run `mix deps.get --only prod`, `MIX_ENV=prod mix compile`, `MIX_ENV=prod mix phoenix.digest`, `MIX_ENV=prod mix ecto.migrate` and `mix run priv/repo/seeds.exs` and `PORT=4001 MIX_ENV=prod mix phoenix.server`
  4. siege 127.0.0.1:4000/posts
  5. go to project and run `crystal build src/api.cr --release` and `./api`
  6. siege 127.0.0.1:8002/posts
  7. next you can test `postgrest --db-name elixir_vs_crystal_dev --db-port 5432 --db-user bartek --db-host localhost --v1schema public --anonymous bartek`
  8. finally go to rails project `bundle` and `rails s --env production`
