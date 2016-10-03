defmodule EctoGenerator.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_generator,
     version: "3.0.0",
     elixir: "~> 1.3",
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end
  
  defp deps do
    [
       {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end
  
  defp package do
    [# These are the default files included in the package
      name: :ecto_generator,
      description: "Generate Ecto schemas from existing database in Phoenix - Elixir",
      files: ["lib", "config", "mix.exs", "README*"],
      maintainers: ["Bagu Alexandru Bogdan"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/alexandrubagu/ecto_generator", "Docs" => "https://github.com/alexandrubagu/ecto_generator", "Website" => "http://www.alexandrubagu.info" }]
  end
end
