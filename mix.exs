defmodule NovyBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :novy_bot,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {NovyBot.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Discord
      {:nostrum, github: "Kraigie/nostrum", override: true},

      # HTTP
      {:absinthe_client, "~> 0.1.0"},
      {:oauth2, "~> 2.0"},
      {:joken, "~> 2.6"},
      {:jason, "~> 1.4"},

      # DOM
      {:floki, "~> 0.36.0"},
      {:html5ever, "~> 0.16.1"},

      # Database
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},

      # Cache
      {:nebulex, "~> 2.6"},
      {:shards, "~> 1.1"},
      {:decorator, "~> 1.4"},
      {:telemetry, "~> 1.0"},
      {:lodestone_css_selectors,
       git: "https://github.com/xivapi/lodestone-css-selectors.git", app: false}
    ]
  end

  defp aliases do
    []
  end
end
