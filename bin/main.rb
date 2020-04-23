#!/usr/bin/env ruby
# Welcome user to the game
puts 'Welcome to Tic Tac Toe!'

class Board
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
     puts (
       "\n#{@board[0]} | #{@board[1]} | #{@board[2]}"\
       "\n---------"\
       "\n#{@board[3]} | #{@board[4]} | #{@board[5]}"\
       "\n---------"\
       "\n#{@board[6]} | #{@board[7]} | #{@board[8]} "
       )
  end

  def board_update(choice, player)
    choice -= 1
    @board[choice] = (player == 1 ? 'x' : 'o')
  end

end

class Instructions < Board
  def player_choice? (choice)
    choice.between?(1,9)
  end

  def pos_taken?(choice)
    @board[choice - 1] == 'x' || @board[choice - 1] == 'o'
  end

  def win?
    "\nPlayer #{player} is our Tic Tac Toe Master!"
  end

  def draw
    "\n Its a draw!"
  end
end

game = Instructions.new
game.display_board

count = 0
while count <= 1
  (1..2).each do |i|
    player = i

    loop do
      puts("\nPlayer #{i} It's your turn\n(choose between 1-9):")
      choice = STDIN.gets.chomp.to_i

      if game.player_choice?(choice)
        if !game.pos_taken?(choice)
          game.board_update(choice,player)
          game.display_board
          break
        else
          puts "\nPostion already taken, make another move"
        end
      end
    end
  end

  puts "end of round #{count}"
  count += 1
end

puts 'Congratulations Player_one You are a Tic Tac Toe Master!'


# # prompt user to choose
# puts 'Kindly choose one: X or O?'
# chip = gets.chomp.downcase
# until %w[O X].include?(chip_1)
#   puts "\nEnter a valid symbol"
# chip_1 = gets.chomp
# end
#
# chip_2 = board.get_chip(chip)
#
#
#
#
#
# if user == player_one
#   puts "Welcome on board! Your chip is x"
# elsif player == 'player_two'
#   puts "Welcome on board! You chip is o"
# else
#   puts "Kindly enter a valid choice"
# end
#
#
# class Board
# # diplay board on terminal
# board =
#
#
#   display_board(board)
#
# def move(board, index, player)
#    board[index] = player
# end
#
# def wins
#   [[board[0]][1][2], [3][4][5], [6][7][8],
#              [0][4][8], [2][4][6],  [0][3][6],
#              [1][4][7], [2][5][8]]
# end
#
# def get_chip(chip)
#     chip == 'X' ? 'O' : 'X'
# end
#
# end
#
# count = 0
# game_on = true
#
# current_player = player_one.to_i
# while game_on
#
# puts "Player_one kindly choose a number between 1-9"  # player_one chooses position on the board
# player_choice = gets.chomp.to_i
#
# if player_choice  >0 && player_choice <9
#
# board[player_choice - 1] = player_one
# puts display_board(board)
# puts 'Your move has been displayed on board!'
#
# else
#   puts "Enter a Valid move"
# end
#
# puts "Player_two, its now your turn. kindly choose a number between 1-9" # player_two chooses position on the board
# player_choice = gets.chomp.to_i
# board[player_choice - 1] = player_two
# puts display_board(board)
# puts 'Your move has been displayed on board!'
#
# if  current_player.wins?()
#   game_on = false
#   puts "#{current_player} won!"
#   break
# end
# count += 1
#   current_player = current_player == player_one ? player_two : player_one
# end
# # display messages on different wins
# puts "Our Tic tac toe Master is Player_one!"
# puts "Our Tic tac toe Master is Player_two!"
# puts 'It is a Draw!'
