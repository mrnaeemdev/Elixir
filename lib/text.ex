import Integer
defmodule Text do

  def hello_world(count \\ 0) do  # Define a recursive function
    IO.puts("Hello World")
    if count < 10 do
      new_count=count+1
      hello_world(new_count)
    end
  end

  def introduction(name, university) do
    IO.puts("#{name} and my university is #{university}")
  end

  defp private do
    IO.puts("This is a private function")
  end

  def font_changed do
    IO.puts("Font Famaily of vscode has been changed")
  end

  def hello do
    private()  # private function only called within module not outside the module
    :world
  end

  def print_even do
    for x <- 1..10, is_even(x), do: x
  end

  def lists do
    list1=[3,2, "Hello"]
    hd list1
    tl list1

    # prepend an item to front of list1
    list1=["prepend" | list1]

    # Append an item to end of list1
    list1 = list1 ++ ["append"]

    list2=[2,3,"world"]

    # substraction
    IO.puts("list1 : #{list1}")
    IO.puts("list2 : #{list2}")
    list1--list2

    # addition
    IO.puts("list1 : #{list1}")
    IO.puts("list2 : #{list2}")
    list1++list2
  end

  def maps do
    university="University Name"
    m=%{"name" => "Muhammad Naeem", "city" => "Lahore", :university => "UET Lahore", "name" => "Naeem"}

    # access particular property of map
    IO.puts("#{m["name"]} belongs to #{m["city"]}")

    # updating map
    m=%{m | "name" => "Updated Map"}
    %{"name" => username, :university => uni_name} = m  # pattern matching on map
    IO.puts("Username #{username}")
    IO.puts("University #{uni_name}")

  end

  def pipe do
    -5
    |> abs()
    |> Integer.to_string()
    |> String.length()
  end

  def pipe(number) do
    IO.puts("pipe function with the arity of 1")
    IO.puts("Input number : #{number}")
    number
    |> abs()
    |> :math.pow(2)
  end

  def name_pattern(name) do
    name
    |> String.trim()
    |> String.downcase()
    |> String.replace(" ", "-")
  end

  def enums(list) do
    Enum.map(list, fn x-> IO.puts(x*2) end)
    IO.puts("\n")
    Enum.count(list, fn x -> rem(x, 2) == 0 end)
    Enum.find_index(list, fn x -> rem(x, 2) == 0 end)
  end

end
