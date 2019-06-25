class GameOfLife
  include LiveOrDie

  attr_reader :world

  def initialize(height = 5, width = 5)
    @height = height
    @width = width
  end

  def generate_world
    @world = Array.new(@height) do
      Array.new(@width) do
        rand.round
      end
    end
  end

  def blank_world
    Array.new(@height) do
      Array.new(@width)
    end
  end

  def the_next_generation
    generate_world()
    #Engage!
    range1 = 0..(@height - 1)
    range2 = 0..(@width - 1)

    next_world = blank_world()

    range1.each do |row_index|
      range2.each do |column_index|

        sum = game_of_life(range1, range2, row_index, column_index, @world)

        if sum <= 1 || sum >= 4
          next_world[row_index][column_index] = 0
        else
          next_world[row_index][column_index] = 1
        end  
      end
    end
  end
end
