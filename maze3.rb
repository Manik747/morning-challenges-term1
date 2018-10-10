require 'matrix'
class Maze
    def initialize(maze)
        @maze = Matrix[*maze]
        @player_position = Matrix[@maze.index(2)]
    end
    def walk(moves)
        for move in moves
            case move
            when'N'
                @player_position += Matrix[[-1,0]]
            when'S'
                @player_position += Matrix[[1,0]]
            when'E'
                @player_position += Matrix[[0,1]]
            when'W'
                @player_position += Matrix[[0,-1]]
            end
            value = @maze[@player_position[0,0], @player_position[0,1]]
            case value
            when 3
                return 'Finish'
            when 1, nil
                return 'Dead'
            end
            return 'lost'
        rescue
            'Dead'
    end

end