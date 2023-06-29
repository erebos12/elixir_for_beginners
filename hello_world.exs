# Hello World example
# IO - elixir module

name = "Elixir"
line_break = "\n"

IO.puts "Hello#{line_break}#{name}"

# Single quotes: 'anyString' is a list of chars
res = is_list 'hello'
IO.puts res
# Double quotes: "anyString" is a string, NOT a list
res = is_list "hello"
IO.puts res

### Run me in command line with:
# 🚀11:38:39:~/sandbox/basic_elixir (main)$ elixir hello_world.exs 



