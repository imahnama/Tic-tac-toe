#!/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require_relative '../lib/board.rb'

puts "Welcome to tic-tac-toe game!\n\n"
board = Board.new
puts 'Enter Player-1 name:'
name1 = gets.chomp
until /\S/.match(name1)
  puts 'Enter Valid name'
  name1 = gets.chomp
end
puts "\nPlease select X or O"
chip1 = gets.chomp.downcase
until %w[o x].include?(chip1)
  puts "\nEnter a valid symbol"
  chip1 = gets.chomp.downcase
end
puts "\nEnter Player-2 name:"
name2 = gets.chomp
until /\S/.match(name2)
  puts 'Enter Valid name'
  name2 = gets.chomp
end
chip2 = board.get_chip(chip1)
player_one = Player.new(name1, chip1)
player_two = Player.new(name2, chip2)
puts "\nHello #{name1}, your symbol is #{chip1}!"
puts "\nHello #{name2}, your symbol is #{chip2}!\n\n"
count = 0
puts board.display_board
game_on = true
current_player = player_one
while game_on
  puts "#{current_player.name} select a Position between (1-9)(#{current_player.chip})"
  player_pos = gets.chomp.to_i
  until board.position_taken?(player_pos)
    puts "Enter a valid move (#{current_player.chip})\n\n"
    puts board.display_board
    player_pos = gets.chomp.to_i
  end
  # puts board.board_update(player_pos, current_player.chip)
  puts board.board_update(player_pos, current_player.chip)
  puts board.display_board
  if current_player.wins?(player_pos)
    game_on = false
    puts "\n#{current_player.name} won!"
    break
  end
  count += 1
    current_player = current_player == player_one ? player_two : player_one
  return puts "\nMatch Draw!!" if count == 9
end
