
IO.puts("Hello world from Elixir")

IO.puts((4*2)+3)

string = :Carlos

IO.puts("Hello\n#{string}")

IO.puts byte_size("Hello Carlos")

IO.puts String.length("Hello Carlos")

IO.puts String.upcase("Hello Carlos")

IO.puts("Hello Carlos" <> " " <> "from Elixir")

add = fn a, b, c -> a + (b*c) end

IO.puts add.(4, 2, 3)

IO.puts is_function(add)

IO.puts is_function(add, 3)

double = fn a -> add.(a, a, a) end

IO.puts double.(5)

x = 42   #match operator

IO.puts x

IO.puts x == 42

IO.puts [ 1, 2, 3 ]

IO.puts _array = [1,2,3]

plusArray = [1,2,3] ++ [4,5,6]

IO.puts plusArray

IO.puts [1,2,3] -- [2]

IO.puts hd(plusArray)

IO.puts tl(plusArray)

array1 = [1, 2, 3, true]

IO.inspect array1

data_tuple = {"Dib", "Zim", 10, 3.14}

IO.puts elem(data_tuple, 3)

IO.puts tuple_size(data_tuple)

array2 = put_elem(data_tuple, 3, "Carlos")

IO.inspect array2

{a, b, c} = {:hello, "world", 42}

IO.puts a
IO.puts b
IO.puts c

{:ok, result} = {:ok, "Testing matching"}

IO.puts result

IO.inspect {:ok, result} = {:ok, "Testing matching"}

#IO.inspect {:ok, result} = {:error, "Testing matching"} ## Raise an error since the tuple doesnt match with the :ok (atom)

list = [1, 2, 3]

list1 = [0 | list]

IO.inspect list1

x = 1

^x = 2

IO.puts x
