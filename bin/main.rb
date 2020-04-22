#!/usr/bin/env ruby
human_player = "X"
comp_player = "O"

puts "Welcome to Tic Tact Toe!"

puts "Choose from 1 to 9"
user_input = gets.chomp

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
def display_board
   puts row = ["   " "|" "   " "|" "   "]
   puts separator = "-----------"
   puts row
   puts separator
   puts row
 end

 def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(board)


def input_to_index(user_input)
   user_input.to_i - 1
end
