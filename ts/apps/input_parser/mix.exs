defmodule InputParser.Mixfile do
  use Mix.Project

  def project do
    [
      app: :input_parser,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.6.2",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {InputParser.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
        {:mox, "~> 0.3", only: :test},
        {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
        {:excoveralls, "~> 0.8", only: :test},
        {:logger_file_backend, "~> 0.0.10"},
        {:csvlixir, "~> 2.0.3"}
    ]
  end
end
