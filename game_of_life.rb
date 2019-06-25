require './live_or_die'

class GameOfLife
  include LiveOrDie

  attr_reader :world

  def initialize(height = 5, width = 5)
    @height = height
    @width = width
  end

  def generate_world
    world = Array.new(@height) do
      Array.new(@width) do
        rand.round
      end
    end
    world
  end

  def blank_world
    Array.new(@height) do
      Array.new(@width)
    end
  end

  def row_range
    0..(@height - 1)
  end

  def column_range
    0..(@width - 1)
  end

  def the_next_generation(range1, range2, world)
    #Engage!
    next_world = blank_world()

    range1.each do |row_index|
      range2.each do |column_index|

        sum = game_of_life(range1, range2, row_index, column_index, world)
        
      end
    end
    next_world
  end
end
