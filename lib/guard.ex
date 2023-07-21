defmodule Guard do


  @moduledoc """
  ## Definition
  Guard clauses allow Elixir to determine which function to invoke
  based not only on which arguments are passed, but also on type or
  some tests involving their values. Guard clauses are defined using
  the when keyword.

  Implement guard in elixir
  """

  @doc """
  Implement function to convert amount to dollar using guard

  ## Parameter
      - amount: Float amoount to convert into dollar
  ## Examples
      iex>Guard.to_dollar(0)
          0.0
      iex>Guard.to_dollar(0.999999999)
          1.0
  """

def to_dollar(amount) when amount == 0 do
  0.00
end

def to_dollar(amount) do
  amount
  |> Float.ceil(2)
end

def kind_of(x) when is_binary(x) do
  "#{x} is a binary"
end

def kind_of(x) when is_atom(x) do
  "#{x} is an atom"
end


@doc"""

Provides a function to check number is ten or greater or less

## parameters
    -x: int number to compare with 10
## Examples

  iex>Guard.is_ten(0)
      "Less than ten"
  iex>Guard.is_ten(10)
      "Yes"
  iex>Guard.is_ten(20)
      "Greater than ten"
"""

def is_ten(x) when x>10, do: "Greater than ten"

def is_ten(x) when x<10, do: "Less than ten"

def is_ten(x), do: "yes"


def is_animal(animal) when animal in [:dog, :cat, :fish] do
  true
end

def in_range(x) when x in 1..6 do
  IO.puts(x)
  true
end


  @doc"""

Provides a function to calculate the factorial of number

## parameters
    -n: int number to find factorial
## Examples

  iex>Guard.is_ten(0)
      1
  iex>Guard.is_ten(3)
      6
  iex>Guard.is_ten(5)
      120
"""
  def factorial(n) when n==0 do
    1
  end
  def factorial(n) when n > 0 do
    n*factorial(n-1)
  end
end
