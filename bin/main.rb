#!/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

puts 'Welcome to tic-tac-toe game!'
player_chip = Player.new
puts 'Enter Player_one name:'
name1 = gets.chomp
until /[a-z]/.match(name1)
  puts 'Enter Valid name'
  name1 = gets.chomp
end
puts 'Please select X or O'
chip1 = gets.chomp.downcase
until %w[o x].include?(chip1)
  puts 'Enter a valid choice'
  chip1 = gets.chomp.downcase
end
puts 'Enter Player_two name:'
name2 = gets.chomp
until /[a-z]/.match(name2)
  puts 'Enter Valid name'
  name2 = gets.chomp
end
chip2 = player_chip.get_chip(chip1)
player_one = Player.new(name1, chip1)
player_two = Player.new(name2, chip2)
puts "Hello #{name1}, your chip is #{chip1}!"
puts "Hello #{name2}, your chip is #{chip2}!"
count = 0

current_player = player_one
board = Board.new(current_player, player_one, player_two)
puts board.display_board
game_on = true
while game_on
  puts "#{board.current_player.name} select a Position between (1-9)"
  player_pos = gets.chomp.to_i
  until board.position_taken?(player_pos)
    puts 'Enter a valid position between 1-9:'
    puts board.display_board
    player_pos = gets.chomp.to_i
  end
  board.board_update(player_pos)
  puts board.display_board
  if board.wins?(player_pos)
    game_on = false
    puts "Congratulations #{board.current_player.name} You are a Tic Tac Toe Master!"
    break
  end
  count += 1
  board.switch_player
end
