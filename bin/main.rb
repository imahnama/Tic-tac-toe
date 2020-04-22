#!/usr/bin/env ruby
# Welcome user to the game
puts 'Welcome to Tic Tac Toe!'

user_name = 'Player_one'
user_name1 = 'Player_two'

# prompt user to choose
puts 'Kindly choose one: X or O?'
player = gets.chomp.downcase

if player == 'x'
  puts "Welcome on board! You are #{user_name}"
elsif player == 'o'
  puts "Welcome on board! You are #{user_name1}"
end

# diplay board on terminal
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts '-----------'
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts '-----------'
puts " #{board[6]} | #{board[7]} | #{board[8]} "

# player_one chooses position on the board
puts "#{user_name} kindly choose a number between 1-9"
player_one_choice = gets.chomp.to_i
board[player_one_choice - 1] = player

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts '-----------'
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts '-----------'
puts " #{board[6]} | #{board[7]} | #{board[8]} "

puts 'Your move has been displayed on board!'

# player_two chooses position on the board
puts "#{user_name1}, its now your turn. kindly choose a number between 1-9"
player_one_choice = gets.chomp.to_i
board[player_one_choice - 1] = player

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts '-----------'
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts '-----------'
puts " #{board[6]} | #{board[7]} | #{board[8]} "

puts 'Your move has been displayed on board!'

# display messages on different wins
puts "Our Tic tac toe Master is #{user_name}!"
puts "Our Tic tac toe Master is #{user_name1}!"
puts 'It is a Draw!'
