defmodule Condition do

  @moduledoc """
  Provides a function to check number is even or not
  Provides a function to greeting a human depending upon time.
  """

  @doc """
  Check number is even or odd
  ## Parameters
    - input_number: int that has to be checked

  ## Examples
    iex>Condition.is_even?(4)
      true
    iex>Condition.is_even?(3)
      false
  """


  def is_even?(input_number) do
    if rem(input_number, 2) == 0 do
      true
    else
      false
    end
  end

  @doc """

  Print greeting to user base on time

  ## Parameters

     - hour: int that represents time of day

  ## Examples
          iex>Condition.greeting(2)
            "Good Morning"
          iex>Condition.greeting(25)
            "Greetings"
  """

  def greeting(hour) do
    cond do
      hour < 12 -> IO.puts("Good Morning")
      hour >= 12 && hour < 17 -> IO.puts("Good afternoun")
      hour >= 17 && hour < 24 -> IO.puts("Good Evening")
      true -> IO.puts("Greetings!")
    end
  end
end
