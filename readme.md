# Elixir Basics

Just read https://elixir-lang.org/getting-started/introduction.html

## 1. Whats so special about Elixir ?

### Runs on Erlang

### Actor pattern with processes

### Immutability

### Functional

### Pattern Matching

### Recursion



## 2. Mix framework

Create a new project with mix. It creates the folder structure including tests. 

```
🚀11:08:10:~/sandbox/basic_elixir (main)$ mix new recursion
* creating README.md
* creating .formatter.exs
* creating .gitignore
* creating mix.exs
* creating lib
* creating lib/recursion.ex
* creating test
* creating test/test_helper.exs
* creating test/recursion_test.exs

Your Mix project was created successfully.
You can use "mix" to compile it, test it, and more:

    cd recursion
    mix test

Run "mix help" for more commands.

```
Running the tests:
```
🚀11:29:23:~/sandbox/basic_elixir/recursion (main)$ mix test
....
Finished in 0.01 seconds (0.00s async, 0.01s sync)
4 doctests, 0 failures

Randomized with seed 409192
```
