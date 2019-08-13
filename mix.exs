defmodule ElixirGitlab.Mixfile do
  use Mix.Project

  def project do
    [
      app:     :elixir_gitlab,
      version: "0.0.1",
      elixir:  "~> 1.9",
      build_embedded:  Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  def application do
    [
      applications: [
        :logger,
        :httpoison,
      ],
      mod: {ElixirGitlab, []}
    ]
  end

  defp deps do
    [
      {:poison,    "~> 4.0.1"},
      {:httpoison, "~> 1.5.1"},

      {:bypass,   "~> 1.0.0", only: :test},
    ]
  end
end
