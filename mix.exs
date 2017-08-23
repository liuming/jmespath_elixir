defmodule JMESPath.Mixfile do
  use Mix.Project

  def project do
    [
      app: :jmespath,
      package: %{
        description: "Elixir implementation of JMESPath.",
        links: %{github: "https://github.com/liuming/jmespath_elixir"},
        maintainers: [ "Ming Liu" ],
        licenses: ["MIT"],
      },
      docs: [main: "JMESPath", extras: ["README.md"]],
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
