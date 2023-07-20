defmodule Condition do

  def is_even?(input_number) do
    if rem(input_number, 2) == 0 do
      true
    else
      false
    end
  end


  def greeting(hour) do
    cond do
      hour < 12 -> IO.puts("Good Morning")
      hour >= 12 && hour < 17 -> IO.puts("Good afternoun")
      hour >= 17 && hour < 24 -> IO.puts("Good Evening")
      true -> IO.puts("Greetings!")
    end
  end

end
