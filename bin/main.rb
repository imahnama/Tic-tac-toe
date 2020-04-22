#!/usr/bin/env ruby
puts "Welcome to Tic Tact Toe!"

player_one = player_one
player_two = player_two

puts "Kindly choose one: X or O?"
player = gets.chomp.downcase

if player == "x"
   puts "Welcome on board! You are #{player_one}"
elsif player == "o"
   puts "Welcome on board! You are #{player_two}"   
end

 board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
 
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
   

   puts "#{player_one} kindly choose a number between 1-9"
   player_one_choice = gets.chomp

   board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
   
