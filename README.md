# EctoGenerator
Generate Ecto schemas/models from existing database in Phoenix - Elixir

## Installation 
#### Generate new Phoenix application
```elixir
[alexandrubagu@localhost devel]$ mix phoenix.new postgresapp
```
or

```elixir
[alexandrubagu@localhost devel]$ mix phoenix.new mysqlapp --database mysql
```

#### Add `ecto_generator` to your list of dependencies in `mix.exs`:
```elixir
def deps do
  [{:ecto_generator, "~> 9.0.0"}]
end
```

#### Install mix dependencies by running the following command in bash `mix deps.get`
#### Edit you configuration if is necessary:
```elixir
# Configure your database
config :mysqlapp, Mysqlapp.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "hello_phoenix_dev",
  hostname: "localhost",
  pool_size: 10
```

#### Now you will find `ecto.dump.schema` in mix tasks:
```elixir
[alexandrubagu@localhost devel/phoenix/] mix ecto
Ecto v2.0.5
A database wrapper and language integrated query for Elixir.

Available tasks:

mix ecto.create        # Creates the repository storage
mix ecto.drop          # Drops the repository storage
mix ecto.dump          # Dumps the repository database structure
mix ecto.dump.schema   # Dump models/schemas from repos
mix ecto.gen.migration # Generates a new migration for the repo
mix ecto.gen.repo      # Generates a new repository
mix ecto.load          # Loads previously dumped database structure
mix ecto.migrate       # Runs the repository migrations
mix ecto.migrations    # Displays the repository migration status
mix ecto.rollback      # Rolls back the repository migrations
```


#### Output Sample
```elixir
[alexandrubagu@localhost devel/mysqlapp ] mix ecto.dump.schema
13:15:04.270 [debug] QUERY OK db=0.8ms decode=0.1ms queue=15.2ms
SELECT table_name FROM information_schema.tables WHERE table_schema = 'sakila' []

13:15:04.272 [debug] QUERY OK db=0.9ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'actor' and table_schema='sakila' []
  web/models/actor.ex was generated

13:15:04.289 [debug] QUERY OK db=1.6ms decode=0.1ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'actor_info' and table_schema='sakila' []
  web/models/actor_info.ex was generated

13:15:04.293 [debug] QUERY OK db=1.2ms decode=0.1ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'address' and table_schema='sakila' []
  web/models/address.ex was generated

13:15:04.298 [debug] QUERY OK db=0.8ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'category' and table_schema='sakila' []
  web/models/category.ex was generated

13:15:04.302 [debug] QUERY OK db=0.8ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'city' and table_schema='sakila' []
  web/models/city.ex was generated

13:15:04.306 [debug] QUERY OK db=0.7ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'country' and table_schema='sakila' []
  web/models/country.ex was generated

13:15:04.310 [debug] QUERY OK db=1.0ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'customer' and table_schema='sakila' []
  web/models/customer.ex was generated
  enum is not supported ... Fallback to :string
  set is not supported ... Fallback to :string

13:15:04.314 [debug] QUERY OK db=0.9ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'film' and table_schema='sakila' []
  web/models/film.ex was generated

13:15:04.319 [debug] QUERY OK db=1.4ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'film_actor' and table_schema='sakila' []
  web/models/film_actor.ex was generated

13:15:04.323 [debug] QUERY OK db=0.9ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'film_category' and table_schema='sakila' []
  web/models/film_category.ex was generated
  enum is not supported ... Fallback to :string

```
