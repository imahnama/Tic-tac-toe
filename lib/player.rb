class Player
  attr_reader :name, :chip
  def initialize(name = nil, chip = nil, player_pos = nil)
    @name = name
    @chip = chip
    @player_pos = player_pos
  end

  def get_chip(chip)
    chip == 'x' ? 'o' : 'x'
  end
end
