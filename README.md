# Workshop Programation Fonctionnelle

## Project aim

Do you remind about DoOps ? Our favorite calculator which calculate any arithmetic expression like this :
```
42 + 404 = 426
```
However, we cannot do a calculation like this
```
42 * 69 + 12 - 88 / 404
```
Our computer is not very smart. It doesn't know about arithmetic priority (like doing the multiplication or division before an addtion or a substraction). How can we do that ?
We will use an **abstract syntax tree**. It is a binary tree which allow us to do the right calculations in the right moment. The objective is now set.

## Requirements
- This project will be entirely made the programming language Haskell.
- Make sure you have `ghc` with `ghc --version`. Otherwise, [download it here](https://www.haskell.org/ghcup/).
- Create a repository in **public** and send me the link in the Teams group.

## Useful links
- [Abstract Syntax Tree (please not Java)](https://www.geeksforgeeks.org/abstract-syntax-tree-ast-in-java/)
- [Tree traversal : which one ?](https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/)

## GHCi - Our beautiful sandbox

### Step 0 - Hello World

- Use `ghci` to print on your terminal to print `Hello World`.
```
❯ ghci
GHCi, version 9.4.7: https://www.haskell.org/ghc/  :? for help
ghci> "Hello World!"
"Hello World!"
```
Like in Vim, use `:q` to quit `ghci`.

### Step 1 - create a sum function
- In Haskell, we already have a sum function, but it is the easiest function to begin with Haskell.
```
function : mySum
prototype : mySum :: [Int] -> Int
file : MySum.hs
```
- To test it, use `ghci` and load the module.
```
❯ ghci
GHCi, version 9.4.7: https://www.haskell.org/ghc/  :? for help
ghci> :l MySum.hs
[1 of 2] Compiling Main             ( MySum.hs, interpreted )
Ok, one module loaded.
ghci> mySum [10, 5, 5]
20
```
You may use `:r` to reload the file once the file is loaded.

### Step 2.1 - Do the basics operation functions
- Now you have some basics in Haskell, we will create all our operations functions.
```
functions : addition, substract, multiply
file : Operation.hs

-- adition
prototype : addition :: Int -> Int -> Int

-- substraction
prototype : substraction :: Int -> Int -> Int

-- multiply
prototype : multiply :: Int -> Int -> Int
```
You now know how to test your functions (hehe).

### Step 2.2 - Divide...?
```
function : divide
prototype : divide :: Int -> Int -> ??? Int
file : Operation.hs
```
Should I give you the answer about the prototype ? `Maybe` yes, `Maybe` no...
