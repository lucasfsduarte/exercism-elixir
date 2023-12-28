defmodule HelloWorld do
  @moduledoc """
  Exercise: https://exercism.org/tracks/elixir/exercises/hello-world
  """

  @doc """
  Simply returns "Hello, World!"

  ## Examples

  iex> HelloWorld.hello()
  "Hello, World!"
  """
  @spec hello :: String.t()
  def hello, do: "Hello, World!"
end
