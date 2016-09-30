# EctoGenerator
Generate Ecto schemas from existing database in Phoenix - Elixir

## Installation 
1. Generate new Phoenix application
```bash
[alexandrubagu@localhost devel]$ mix phoenix.new postgresapp
```

or

```bash
[alexandrubagu@localhost devel]$ mix phoenix.new mysqlapp --database mysql
```

2. Add `ecto_generator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ecto_generator, "~> 2.0.0"}]
end
```

3. Install mix dependencies by running the following command in bash `mix deps.get`
4. Now you will find `ecto.dump.schema` in mix task:

```bash
[alexandrubagu@localhost devel/phoenix/] mix ecto
Ecto v2.0.5
A database wrapper and language integrated query for Elixir.

Available tasks:

mix ecto.create        # Creates the repository storage
mix ecto.drop          # Drops the repository storage
mix ecto.dump          # Dumps the repository database structure
mix ecto.dump.schema   # Dump models from repos
mix ecto.gen.migration # Generates a new migration for the repo
mix ecto.gen.repo      # Generates a new repository
mix ecto.load          # Loads previously dumped database structure
mix ecto.migrate       # Runs the repository migrations
mix ecto.migrations    # Displays the repository migration status
mix ecto.rollback      # Rolls back the repository migrations
```
