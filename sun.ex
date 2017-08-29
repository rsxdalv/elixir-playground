defmodule M do
    def main do
        data_stuff()
        more_data_stuff()
        even_more_stuff(3)
    end

    def data_stuff do
        my_str = "My sentence"
        IO.puts "Atom #{String.length(my_str)}"
        longer = my_str <> " is longer" <> "!"
        IO.puts longer
        IO.puts "Equal : #{"Egg" === "egg"}"
        IO.puts "My ? #{String.contains?(my_str, "My")}"
        IO.inspect String.split(longer, " ")


        4 * 10 |> IO.puts
    end

    def more_data_stuff do
        def nested do
            IO.puts "Nested"
        end
        nested()
        add5 = fn x -> x + 5 end
        3 |> add5.() |> IO.puts
        myint = 123
        IO.puts "My int is #{myint}"
        myint * 3 
            |> (fn x -> x * 2 end).() 
            |> IO.puts

        Enum.map [1, 2, 3, 4], &(&1 * 2)
            |> IO.inspect
    end

    def even_more_stuff(y) do
        if y < 5 do
            IO.puts "true"
        end
    end
end

M.main()
