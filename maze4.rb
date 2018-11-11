class Maze
    # Default start and finish numbers
    attr_reader :position

    @@START_NUMBER = 2
    @@FINISH_NUMBER = 3
    @@ROW_INDEX = 0
    @@COL_INDEX = 1
    
    # Finds and returns postion of the first number in form of array
    def find_position(num)
        @maze.each_index do |index|
            if @maze[index].include?(num)
                return [index, @maze[index].index(num)]
            end
        end
    end
    
    def initialize(maze)
        @maze = maze
        @position = find_position(@@START_NUMBER)#  <-- Array 
        @end_position = find_position(@@FINISH_NUMBER)# <-- Array     
    end
    
    def in_maze?
        return false unless
        @position[@@ROW_INDEX] >= 0 and @position[@@ROW_INDEX] < @maze.length and
        @position[@@COL_INDEX] >= 0 and @position[@@COL_INDEX] < @maze[0].length
        return true
        # This function checks if the player is in maze
    end

    def check_position
        current_value = @maze[@position[@@ROW_INDEX]][@position[@@COL_INDEX]]
        puts "value " + current_value
        if not in_maze? or current_value == 1
            return 'Dead'
        else current_value == @@FINISH_NUMBER
            return 'Finish'    
        end    
        # Checks player position
        # Calls in_maze? method
    end
    def walk(moves)
        moves.each do |direction|
            case direction
            when 'N'
                @position[@@ROW_INDEX] -= 1
            when 'E'
                @position[@@COL_INDEX] += 1
            when 'S'
                @position[@@ROW_INDEX] += 1
            when 'W'
                @position[@@COL_INDEX] -= 1
            end
            # Calls check_position method here
            status = check_position 

            return status if status == 'Dead' or status == 'Finish'
        end
        return 'Lost'
    end
end