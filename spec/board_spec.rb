require './lib/board.rb'

describe Board do
  let(:board) { Board.new }
  let(:player_one) { Board.new }
  let(:player_two) { Board.new }
  let(:board) { Board.new(:player_one, :player_two, :board) }
  let(:current_player) { :player_one }

  describe '#initialize' do
    it 'should initialize as Board class' do
      expect(board.class).to eql(Board)
    end

    it '#initialize the board with a grid' do
      expect { Board.new(board: 'board') }.to_not raise_error
    end
  end

  describe '#position_taken?' do
    it 'returns true if a choice made is valid' do
      expect(board.position_taken?(1)).to be true
    end
    it 'returns false if a choice made is invalid' do
      expect(board.position_taken?(10)).not_to be true
    end

    it 'returns error if no argument is given' do
      expect { board.position_taken? }.to raise_error(ArgumentError)
    end
  end

  describe '#display_board' do
    it 'returns the grid of string if correct position is passed' do
      expect(board.display_board(3, 'x')).to be_instance_of(String)
    end
  end
  describe '#wins?' do
    it 'returns false if the player doesnt win the game' do
      expect(board.wins?(%w[1 3 5])).to be false
    end
    it 'returns false if the player doesnt win the game' do
      expect(board.wins?('2')).to be false
    end
    it 'returns true if player wins the game' do
      choice = %w[1 2 3]
      actual = board.wins?(choice)
      expect(actual).to be true
    end
    it 'returns error if no argument is passed' do
      expect { board.wins? }.to raise_error(ArgumentError)
    end
  end

  describe '#board_update' do
    chip = 'x'
    choice = '7'
    it 'replaces choice made with current player chip' do
      actual = board.display_board[choice] == chip
      expected = board.display_board[7] == 'x'
      expect(actual).to eq expected
    end

    it 'raises an error if wrong player chip is placed in the choice' do
      actual = board.display_board[choice] == chip
      expected = board.display_board[8] == 'o'
      expect(actual).to eq expected
    end
  end

  describe '#switch_player' do
    context 'when switch player is called' do
      it 'changes the current player for the next one' do
        expect(board.send(:switch_player)).to eql(:player_two)
      end
    end
  end
end
