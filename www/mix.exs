defmodule WWW.Mixfile do
  use Mix.Project

  def project do
    [
      app: :www,
      version: "0.0.1",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger], mod: {WWW.Application, []}]
  end

  defp deps do
    [
      {:ace, "~> 0.15.2"},
      {:tokumei, "~> 0.9.0"},
      {:server_sent_event, "~> 0.2.0"},
      {:mime, "~> 1.1"},
      {:exsync, "~> 0.2.1"},
      {:wobserver, "~> 0.1.8"}
    ]
  end
end
