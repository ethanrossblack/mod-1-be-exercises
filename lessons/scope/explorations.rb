require 'pry'
#### GLOBAL SCOPE
## Example 1

# x = 10
# puts x
# puts y

## Example 2

# x = 10
# puts x
# puts y
# y = 20

## Example 3

# x = 10
# def say_hello
#   puts 'Hello World!'
# end
# puts x

## Example 4

# def print_variable
#   x = 4
#   puts x
# end

# x = 2
# puts x
# print_variable

## Example 5

# def print_variable
#   x = 4
# end

# x = 2
# print_variable
# puts x

##

#### ARGUMENT SCOPE

## Example 10

# def print_variable(x)
#   puts x
# end

# print_variable(4)

## Example 11

# def print_variable(x)
#   puts x
# end

# x = 4
# print_variable(x)

## Example 12

# def print_variable(x)
#   puts x
# end

# x = print_variable(2)
# puts x

## Example 13

# def print_variable(x)
#   x = 4
#   puts x
# end

# print_variable(2)
# puts x

#### BLOCK SCOPE

## Example 14

# numbers = [1, 2, 3]
# total = 0
# numbers.each do |number|
#   total += number
# end

# p total

## Example 15

# numbers = [1, 2, 3]
# total = 0
# numbers.each do |number|
#   pizza = 'yummy!'
#   total += number
# end

# p pizza

## Example 16

# numbers = [1,2,3]
# total = 0
# numbers.each do |number|
#   total += number
# end

# p number

## Example 17

# numbers = [1,2,3]
# number = 0
# numbers.each do |number|
#   puts number
# end

## Example 18

# numbers = [1, 2, 3]
# numbers.each do |number|
#   number = 0
#   puts number
# end

## Example 19

numbers = [1,2,3]
def number
  0
end
numbers.each do |number|
  puts number
end