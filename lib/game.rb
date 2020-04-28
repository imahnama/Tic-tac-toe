class Player
  attr_reader :name, :chip
  def initialize(name, chip)
    @name = name
    @chip = chip
    @final_array = []
    @win_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                [1, 4, 7], [2, 5, 8], [3, 6, 9],
                [1, 5, 9], [3, 5, 7]]
  end

  def wins?(choice)
    @final_array.push(choice)
    @winner = false
    @win_arr.each do |arr|
      @winner = true if @final_array.include?(arr[0]) && @final_array.include?(arr[1]) && @final_array.include?(arr[2])
    end
    @winner
  end
end
