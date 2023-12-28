defmodule Lasagna do
  @moduledoc """
  Exercise: https://exercism.org/tracks/elixir/exercises/lasagna
  """

  @spec expected_minutes_in_oven() :: integer
  def expected_minutes_in_oven, do: 40

  @spec remaining_minutes_in_oven(integer) :: integer
  def remaining_minutes_in_oven(actual_minutes) do
    expected_minutes_in_oven() - actual_minutes
  end

  @spec preparation_time_in_minutes(integer) :: integer
  def preparation_time_in_minutes(layers_amount) do
    minutes_to_prepare_layer = 2
    layers_amount * minutes_to_prepare_layer
  end

  @spec total_time_in_minutes(integer, integer) :: integer
  def total_time_in_minutes(layers_amount, oven_time) do
    preparation_time = preparation_time_in_minutes(layers_amount)
    preparation_time + oven_time
  end

  @spec alarm :: String.t()
  def alarm, do: "Ding!"
end
