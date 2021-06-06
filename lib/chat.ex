defmodule Chat do
  @moduledoc false

  def receive(raw_message) do
    IO.puts(raw_message)
  end

  def send_message(to, message) do
    {ChatDistributed.TaskSupervisor, to}
    |> Task.Supervisor.async(__MODULE__, :receive, [message])
    |> Task.await()
  end
end
