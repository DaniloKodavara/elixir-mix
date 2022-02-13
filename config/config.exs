use Mix.Config

config :elixir_mix, ElixirMix.Agendador, jobs: [
    {"* * * * *", fn -> GenServer.cast(:servidor_aleatorio, :escreve) end}
]