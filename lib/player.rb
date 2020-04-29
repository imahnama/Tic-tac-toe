class Player
  attr_reader :name, :chip
  def initialize(name = nil, chip = nil)
    @name = name
    @chip = chip
  end

  def get_chip(chip)
    chip == 'x' ? 'o' : 'x'
  end
end
