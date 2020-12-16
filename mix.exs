defmodule Haex.MixProject do
  @moduledoc false

  use Mix.Project

  def project do
    [
      app: :haex,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description:
        "Haskell as Elixir - A DSL for implementing Haskell style sum and product data types in Elixir"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end
end
