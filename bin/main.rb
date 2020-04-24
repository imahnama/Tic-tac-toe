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
    puts "\n#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "\n---------"
    puts "\n#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "\n---------"
    puts "\n#{@board[6]} | #{@board[7]} | #{@board[8]} "
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
game_on = true
# game repeats all actions for player's moves
while count <= 1
  %w[one two].each do |i|
    player = i
    loop do
      puts("\nPlayer_#{i} It's your turn\n(choose between 1-9):")
      choice = gets.chomp.to_i
      if game.player_choice?(choice)
        unless game.pos_taken?(choice)
          game.board_update(choice, player)
          game.display_board
          break
          # Check for winning,draw condition
          if player_one.wins > player_two.wins
            puts  'Player_one wins!'
          elsif player_two.wins > player_one.wins
            puts 'Player_two wins!'
          else
            puts 'You tied!'
          end
          game_on = false
        end
        puts "\nIt's a win, comngratulations player_one!"
      else
        puts "\nPostion already taken, make another move"
      end
    end
  end
  puts "end of round #{count}"
  count += 1
end
puts 'Congratulations Player_one You are a Tic Tac Toe Master!'
