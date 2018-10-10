class Maze 
    def find_position(num)
        @player_row = @maze.index { | row | row.index(num)}
        @player_col = @maze[@player_row].index(num)
    end
    def initialize(maze)
        @maze = maze
        find_position
        #set player start location
    end

    def walk(moves)
        # Do each move in turn
        for move in moves
            #Change player position
            case move
            when 'N'
                @player_row -= 1
            when 'S'
                @player_row += 1
            when 'E'
                @player_col += 1
            when 'W'
                @player_col -= 1
            end
                #Test the new location
            value =(@player_row >= 0 && @player_col >=0) ? @maze[@player_row][@player_col] : nil
            case value
            when 3
                return 'Finish'
            when 1, nil
                return 'Dead'
            end
            return 'Lost'
        rescue
            'Dead'
    end
end