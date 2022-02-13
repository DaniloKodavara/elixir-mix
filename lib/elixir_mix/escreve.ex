defmodule Mix.Tasks.Escreve do
  @moduledoc """
    Documentacao completa da tarefa.

    `mix escreve`
  """

  use Mix.Task

  @shortdoc "Escreve um numero aleatorio no arquivo.txt"
  def run(_) do
    ElixirMix.EscreveNumeroAleatorio.escreve()
  end
end