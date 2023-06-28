# Elixir Basics

## File
- ".ex" - compiled files
- ".exs" - script files
- file names structured in "snake_case" like hello_world.exs

## Interactive Elixir repl
- interactive cmd line tool: type '`iex`' + Enter
- getting help by `h String` or h `String.downcase`
- list all function of a module:
  - type `String.` + Tab-Key which lists all function then
- compile a file:
    ```
    iex(8)> c "./hello_world.exs"
    Hello World!
    []
    ```
  - `[]` -> returns the list of dependencies
- customize 'iex' with `h IEx.configure` or with config file '.iex.exs'

## Basic Data Types

- there are integers and floats

## Pattern Matching

`a = 8` is NOT an assignment as in other languages. 
It's a binding the LHS to the RHS.

### Example

`iex(3)> {:ok, my_file} = File.open "readme.md"`

This is NOT an assigment of the return state to :ok. Its matching if
the return state of File.open is `:ok`. For example:

```
iex(4)> {:ok, my_file} = File.open "unkown.file"
** (MatchError) no match of right hand side value: {:error, :enoent}
    (stdlib 4.3.1.1) erl_eval.erl:496: :erl_eval.expr/6
    iex:4: (file)
``` 
The `:error` is NOT matching with `:ok`!

OR
```
iex(4)> {:o, my_file} = File.open "readme.md" 
** (MatchError) no match of right hand side value: {:ok, #PID<0.111.0>}
    (stdlib 4.3.1.1) erl_eval.erl:496: :erl_eval.expr/6
    iex:4: (file)
``` 
So its no check with IF-ELSE necessary. This is done by the matching automatically.
