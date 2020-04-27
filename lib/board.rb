class Board
    attr_reader :board
    def initialize
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  
    def display_board
      puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
      puts "---------"
      puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
      puts "---------"
      puts "#{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
  
    def board_update(choice, player)
      choice -= 1
      @board[choice] = (player == 'one' ? 'x' : 'o')
    end
  
    def pos_taken?(choice)
      @board[choice - 1] == 'x' || @board[choice - 1] == 'o'
    end
  
    def player_choice?(choice)
      choice.between?(1, 9)
    end 
  end