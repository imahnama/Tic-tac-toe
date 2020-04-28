class Board
  attr_reader :board
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board(_choice = nil, _current_player = nil)
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '---------'
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '---------'
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def get_chip(chip)
    chip == 'x' ? 'o' : 'x'
  end

  def board_update(_board, choice, player)
    @board[choice - 1] = player
  end

  def position_taken?(choice)
    @board[choice - 1] == 'x' || @board[choice - 1] == 'o' || choice > 9 || choice < 1 ? false : true
  end
end
