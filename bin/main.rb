#!/usr/bin/env ruby
# Welcome user to the game
puts 'Welcome to Tic Tac Toe!'
# create game board
class Board
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  # display board
  def display_board
    puts
    "\n#{@board[0]} | #{@board[1]} | #{@board[2]}"\
    "\n---------"\
    "\n#{@board[3]} | #{@board[4]} | #{@board[5]}"\
    "\n---------"\
    "\n#{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  # assigning player chips
  def board_update(choice, player)
    choice -= 1
    @board[choice] = (player == 'one' ? 'x' : 'o')
  end
end

class Instructions < Board
  # validate player choice
  def player_choice?(choice)
    choice.between?(1, 9)
  end

  # make a move and validate it
  def pos_taken?(choice)
    @board[choice - 1] == 'x' || @board[choice - 1] == 'o'
  end

  # game informs player if selected move is a winning move
  def win?
    "\nPlayer #{player} is our Tic Tac Toe Master!"
  end

  # game informs player if selected move is a draw
  def draw
    "\n Its a draw!"
  end
end

game = Instructions.new
game.display_board

count = 0
# game repeats all actions for player's moves
while count <= 1
  %w[one two].each do |i|
    player = i

    loop do
      puts("\nPlayer #{i} It's your turn\n(choose between 1-9):")
      choice = STDIN.gets.chomp.to_i

      if game.player_choice?(choice)
        if !game.pos_taken?(choice)
          game.board_update(choice, player)
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

puts 'Congratulations Player one You are a Tic Tac Toe Master!'
