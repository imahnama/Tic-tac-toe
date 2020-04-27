class Instructions
    def initialize
      @win_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                  [1, 4, 7], [2, 5, 8], [3, 6, 9],
                  [1, 5, 9], [3, 5, 7]]
    end
  
  
    def win?(choice)
      result_arr = []
      result_arr.push(choice)
      winner = false
      @win.each do |arr|
        winner = true if result_arr.include?(arr[0]) && result_arr.include?(arr[1]) && result_arr.include?(arr[2])
      end
    end
  
    def draw
      draw = false if win? true 
    end
    
  end