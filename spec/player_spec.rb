require './lib/player.rb'

describe Player do
  let(:player) { Player.new }
  let(:name) { Player.new }
  let(:chip) { Player.new }
  let(:moves_history) { Player.new }
  describe '#initialize' do
    it 'should initialize as Player class' do
      expect(player.class).to eql(Player)
    end
  end
  describe '#get_chip' do
    player = Player.new
    it "returns 'o' if 'x' is passed as argument" do
      expect(player.get_chip('x')).to eql('o')
    end
    it "returns 'x' if 'o' is passed as argument" do
      expect(player.get_chip('o')).to eql('x')
    end
    it 'returns error if no argument is given' do
      expect { player.get_chip }.to raise_error(ArgumentError)
    end
  end
end
