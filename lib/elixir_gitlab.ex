defmodule ElixirGitlab do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      %{
        id: ElixirGitlab.API,
        start: {ElixirGitlab.API, :start_link, []}
      }
    ]

    opts = [strategy: :one_for_one, name: ElixirGitlab.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
