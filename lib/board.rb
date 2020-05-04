class Board

    attr_reader :current_player, :player_one, :player_two, :board
  
    WIN_ARR = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
               [1, 4, 7], [2, 5, 8], [3, 6, 9],
               [1, 5, 9], [3, 5, 7]].freeze
  
    def initialize(current_player = nil, player_one = nil, player_two = nil)
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      @current_player = current_player
      @player_one = player_one
      @player_two = player_two
    end
  
    def display_board(_choice = nil, _current_player = nil, chip= nil)
      " #{@board[0]} | #{@board[1]} | #{@board[2]}
   ---------\n #{@board[3]} | #{@board[4]} | #{@board[5]}
   ---------\n #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
  
    def board_update(choice)
      @board[choice - 1] = @current_player.chip
    end
  
    def position_taken?(choice)
      @board[choice - 1] == 'x' || @board[choice - 1] == 'o' || choice > 9 || choice < 1 ? false : true
    end
  
    def wins?(choice)
      @winner = false
      WIN_ARR.each do |arr|
        count = 0
        arr.each do |arry|
          count += 1 if choice.include?(arry.to_s)
          next unless count == 3
  
          @winner = true if count == 3
        end
      end
      @winner
    end
  
    def switch_player
      @current_player = @current_player == @player_one ? @player_two : @player_one
    end
  end
