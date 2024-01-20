defmodule Lasagna do
    @moduledoc """
    Exercise: https://exercism.org/tracks/elixir/exercises/lasagna
    """

  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(actual_minutes) do
    expected_minutes_in_oven() - actual_minutes
  end

  def preparation_time_in_minutes(layers_amount) do
    minutes_to_prepare_layer = 2
    layers_amount * minutes_to_prepare_layer
  end

  def total_time_in_minutes(layers_amount, oven_time) do
    preparation_time = preparation_time_in_minutes(layers_amount)
    preparation_time + oven_time
  end

  def alarm, do: "Ding!"
end
