defmodule Secrets do
  @moduledoc """
  Exercise: https://exercism.org/tracks/elixir/exercises/secrets
  """
  @type numeric_function :: (number() -> number())
  @type integer_function :: (integer() -> integer())

  @spec secret_add(number()) :: numeric_function
  def secret_add(secret) do
    # Shorthand used to declare an anonymous function
    # The explicit way would be like something like:
    # function = fn (a, b) -> a + b end
    &(&1 + secret)
  end

  @spec secret_subtract(number()) :: numeric_function
  def secret_subtract(secret) do
    &(&1 - secret)
  end

  @spec secret_multiply(number()) :: numeric_function
  def secret_multiply(secret) do
    &(&1 * secret)
  end

  @spec secret_divide(number()) :: numeric_function
  def secret_divide(secret) do
    &div(&1, secret)
  end

  @spec secret_and(integer()) :: integer_function
  def secret_and(secret) do
    &Bitwise.band(&1, secret)
  end

  @spec secret_xor(integer()) :: integer_function
  def secret_xor(secret) do
    &Bitwise.bxor(&1, secret)
  end

  @spec secret_combine(numeric_function, numeric_function) :: numeric_function
  def secret_combine(secret_function1, secret_function2) do
    &(secret_function1.(&1) |> secret_function2.())
  end
end
