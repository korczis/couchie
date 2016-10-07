defmodule Couchie.Mixfile do
  use Mix.Project
  @moduledoc """
   Mixfile for the Couchie.

   Designed to be a dependency in other projects.
   """

  @doc "Project Details"
  def project do
    [ app: :couchie,
      elixir: "~> 1.2.0",
      version: "0.1.0",
      deps: deps ]
  end

  def application do
    [
		 applications: [:cberl]
	  ]
  end

  defp deps do
    [
      {:cberl, github: "chitika/cberl"}, #chitika is authoritative source
      {:poison, ">= 3.0.0"}
    ]
  end
end
