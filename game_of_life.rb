require './conway_algorithm'

class GameOfLife
  include LiveOrDie

  attr_reader :height, :width

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
        persisted_or_perished = conway_algorithm(range1, range2, row_index, column_index, world)
        next_world[row_index][column_index] = persisted_or_perished
      end
    end
    next_world
  end
end
