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

16:49:03.228 [debug] QUERY OK db=0.5ms queue=19.1ms
SELECT table_name FROM information_schema.tables WHERE table_schema = 'hello_phoenix_dev' []

16:49:03.229 [debug] QUERY OK db=0.8ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'eos_feedback_review_titles' and table_schema='hello_phoenix_dev' []
  priv/repo/EosFeedbackReviewTitles.ex was generated

16:49:03.240 [debug] QUERY OK db=0.9ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'schema_migrations' and table_schema='hello_phoenix_dev' []
  priv/repo/SchemaMigrations.ex was generated

16:49:03.243 [debug] QUERY OK db=0.8ms
SELECT COLUMN_NAME, DATA_TYPE, CASE WHEN `COLUMN_KEY` = 'PRI' THEN '1' ELSE NULL END AS primary_key FROM information_schema.columns WHERE table_name= 'users' and table_schema='hello_phoenix_dev' []
  priv/repo/Users.ex was generated
```
