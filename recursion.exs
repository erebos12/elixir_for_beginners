# ATTENTION: The recursive call MUST be the last fucntion executed. Order matters here!

defmodule Recursion do
  ### countdown
  def countdown(0.0), do: IO.puts "Blast off the float!"
  def countdown(0), do: IO.puts "Blast off the integer!"
  def countdown(n) when n == 2 do
    IO.puts "#{n}...n is equal to 2..."
    countdown(n-1)
  end
  def countdown(n) when is_integer n  do
    IO.puts "#{n}... integer"
    countdown(n-1)
  end
  def countdown(n) when is_float n do
    IO.puts "#{n}... "
    countdown(n-0.5)
  end
  def countdown(str) when is_binary(str), do: IO.puts "Countdown is a string!"

  ### factorial..see also https://de.wikipedia.org/wiki/Fakult%C3%A4t_(Mathematik)
  def factorial(0), do: 1
  def factorial(n), do: n * factorial(n-1)
  def print_factorial(n) when is_integer n do
    IO.puts "Factorial of '#{n}' is '#{factorial(n)}'"
  end

  ### fibonacci
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)
  # sum of integer in list
  def sum([], acc)  do
    IO.puts("List is reduced!")
    IO.puts "sum([]," <> to_string(acc) <> ")"
    acc
  end

  ### sum of al elements in list
  def sum([head | tail], acc) do
    IO.puts "head = " <> to_string(head)
    IO.inspect(tail)
    n = acc + head
    IO.puts "acc = " <> to_string(n)
    sum(tail, n)
  end
  # Reduce: It's generally used to combine elements into a single value.
  # f: A -> B, A = Menge von n Elementen als Liste -> B = Skalar
  def sum(list), do: IO.puts Enum.reduce(list, 0, fn(x, result) -> x + result end)

  ### square of each element in list
  def square([], result), do: result
     # append to 'res' with ++
  def square([head | tail], result), do: square(tail, result ++ [head * head])
  # Map: The result is always a list of the same size as the original enumerable.
  # f: A -> A ==> Automorphismus: bijektiv (ein-eindeutig) & endomorph (Definitionsmenge = Zielmenge)
  def square(list), do: IO.inspect Enum.map(list, fn(x) -> x * x end)
end

Recursion.countdown(6)
Recursion.countdown(3.0)
Recursion.countdown("ten")

Recursion.print_factorial(6)
Recursion.print_factorial(3)

#IO.puts "Sum of list is: " <> to_string(Recursion.sum([1,2,3,4], 0))

#IO.inspect Recursion.square([1,2,3,4], [])
#  [2,3,4], []++[1*1]]       => result=[1]
#  [  3,4], [1]++[2*2]]      => result=[1,4]
#  [    4], [1,4]++[3*3]]    => result=[1,4,9]
#  [     ], [1,4,9]++[4*4]]  => result=[1,4,9,16]

Recursion.sum([1,2,3])
Recursion.square([1,2,3,4])
