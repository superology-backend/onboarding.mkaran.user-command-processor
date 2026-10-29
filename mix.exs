defmodule UserCommandProcessor.MixProject do
  use Mix.Project

  def project do
    [
      app: :user_command_processor,
      version: "0.1.0",
      elixir: "~> 1.20",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {UserCommandProcessor.Application, []}
    ]
  end

  defp deps do
    [
      {:telemetry, "~> 1.4.2"},
      {:poison, "~> 6.0"},
      {:onboarding_models, path: "../onboarding.mkaran.models"},
      {:lovely_kafka_client,
       git: "git@github.com:superology-backend/libs.lovely-kafka-client.git", branch: "latest"}
    ]
  end
end
