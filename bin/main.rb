#!/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require_relative '../lib/board.rb'

puts 'Welcome to Tic Tac Toe!'
puts 'Choose between x and o'
chip = gets.chomp.downcase

if chip == 'x'
  puts 'Welcome player_one'
else chip == 'o'
  puts 'welcome player_two'
end

game = Board.new
game.display_board

game_on = true
current_player = 'player_one'
while game_on
  puts("\n #{current_player} It's your turn\n(choose between 1-9):")
  choice = gets.chomp.to_i
  until .player_choice?(choice)
    puts 'Enter a valid choice'
    choice = gets.chomp.to_i
    game.display_board
  end
  game.pos_taken?(choice)
  game.board_update(choice, current_player)
  game.display_board
  
  # %w[one two].each do |i|
  #   player = i
  #   loop do
  #     puts("\nPlayer_#{i} It's your turn\n(choose between 1-9):")
  #     choice = gets.chomp.to_i
  #     if game.player_choice?(choice)
  #       unless game.pos_taken?(choice)
  #         game.board_update(choice, player)
  #         game.display_board
  #         break
    
  #         if player_one.wins > player_two.wins
  #           puts 'Player_one wins!'
  #         elsif player_two.wins > player_one.wins
  #           puts 'Player_two wins!'
  #         else
  #           puts 'You tied!'
  #         end
  #         game_on = false
  #       end
  #       puts "\nIt's a win, comngratulations player_one!"
  #     else
  #       puts "\nPostion already taken, make another move"
  #     end
  #   end
  # end
  # puts "end of round #{count}"
  # count += 1
end
puts 'Congratulations Player_one You are a Tic Tac Toe Master!'
