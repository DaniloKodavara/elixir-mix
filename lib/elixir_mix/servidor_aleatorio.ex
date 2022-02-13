defmodule ElixirMix.ServidorAleatorio do
  use GenServer

  def start_link(_) do
    GenServer.start_link(ElixirMix.ServidorAleatorio, :ok, name: :servidor_aleatorio)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_cast(:escreve, _) do
    ElixirMix.EscreveNumeroAleatorio.escreve
    {:noreply, %{}}
  end
end