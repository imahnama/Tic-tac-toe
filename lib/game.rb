class Player
  attr_reader :name, :chip
    def initialize(name, chip)
      @name = name
      @chip = chip
      @res_arr = []
      @win_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                  [1, 4, 7], [2, 5, 8], [3, 6, 9],
                  [1, 5, 9], [3, 5, 7]]
    end


    def wins?(choice)
   @res_arr.push(choice)
   @result = false
   @win_arr.each do |arr|
     @result = true if @res_arr.include?(arr[0]) && @res_arr.include?(arr[1]) && @res_arr.include?(arr[2])
   end
   @result
 end
end
    # def draw
    #   draw = false if win? true
    # end
