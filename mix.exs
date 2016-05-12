defmodule Rlist.Mixfile do
  use Mix.Project

  def project do
    [app: :rlist,
     version: "0.0.1",
     elixir: "~> 1.2",
     description: description,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: package]
  end

  defp description do
    """
    A wrapper around Elixir's Lists that makes cheaper pushing items to them.
    """
  end

  def application do
    [applications: []]
  end

  defp package do
    [maintainers: ["Adán Sánchez de Pedro Crespo"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/aesedepece/elixir-rlist"}]
  end

  defp deps do
    []
  end
end
