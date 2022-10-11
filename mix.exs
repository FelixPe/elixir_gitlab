defmodule ElixirGitlab.Mixfile do
  use Mix.Project

  def project do
    [
      app:     :elixir_gitlab,
      version: "0.0.1",
      elixir:  "~> 1.9",
      build_embedded:  Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [
        :logger,
        :httpoison,
      ],
      mod: {ElixirGitlab, []}
    ]
  end

  defp deps do
    [
      {:poison,    "~> 5.0.0"},
      {:httpoison, "~> 1.8.2"},

      {:bypass,   "~> 2.1.0", only: :test},
    ]
  end
end
