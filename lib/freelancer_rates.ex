defmodule FreelancerRates do
  @moduledoc """
  Exercise: https://exercism.org/tracks/elixir/exercises/freelancer-rates
  """

  def daily_rate(hourly_rate), do: 8.0 * hourly_rate

  def apply_discount(before_discount, discount),
    do: before_discount - before_discount * discount / 100.0

  def monthly_rate(hourly_rate, discount),
    do: ceil(apply_discount(daily_rate(hourly_rate) * 22.0, discount))

  def days_in_budget(budget, hourly_rate, discount),
    do: Float.floor(budget / (8.0 * apply_discount(hourly_rate, discount)), 1)
end
