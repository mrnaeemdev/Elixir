defmodule PhoneNumber do
  defstruct [:area_code, :number, country_code: "+92"]

  def main() do
    IO.puts("Creating a new Number")
    new("CH11", 12121212)
    |>get_number()
  end

  def new(area_code, number) do
    %PhoneNumber{area_code: area_code, number: number}
  end

  def get_number(str) do
    "Mobile Number : #{str.number}"
  end
end
