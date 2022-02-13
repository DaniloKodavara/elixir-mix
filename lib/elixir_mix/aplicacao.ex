defmodule ElixirMix.Aplicacao do
  use Application

  def start(_type, _args) do
    children = [
      # This is the new line
      ElixirMix.ServidorAleatorio,
      ElixirMix.Agendador
    ]

    opts = [
      strategy: :one_for_one,
      name: ElixirMix.Supervisor
    ]
    Supervisor.start_link(children, opts)
  end
end