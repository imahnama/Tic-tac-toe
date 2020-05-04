class Player
    attr_reader :name, :chip, :moves_history
    attr_writer :moves_history
    def initialize(name = nil, chip = nil)
      @name = name
      @chip = chip
      @moves_history = []
    end
  
    def get_chip(chip)
      chip == 'x' ? 'o' : 'x'
    end
end