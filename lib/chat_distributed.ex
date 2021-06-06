defmodule ChatDistributed do
  @moduledoc false

  use Application

  def start(_types, _args) do
    children = [
      {Task.Supervisor, name: ChatDistributed.TaskSupervisor}
    ]

    opts = [strategy: :one_for_one, name: ChatDistributed.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
