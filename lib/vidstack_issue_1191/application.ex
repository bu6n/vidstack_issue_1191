defmodule VidstackIssue1191.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      VidstackIssue1191Web.Telemetry,
      {DNSCluster, query: Application.get_env(:vidstack_issue_1191, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: VidstackIssue1191.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: VidstackIssue1191.Finch},
      # Start a worker by calling: VidstackIssue1191.Worker.start_link(arg)
      # {VidstackIssue1191.Worker, arg},
      # Start to serve requests, typically the last entry
      VidstackIssue1191Web.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: VidstackIssue1191.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    VidstackIssue1191Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
