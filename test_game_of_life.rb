require 'minitest/autorun'
require './game_of_life'
require 'pry'


class TestGameOfLife < Minitest::Test
  def setup
    @game = GameOfLife.new
  end

  def test_that_it_initialized_with_default_attributes
    assert_kind_of GameOfLife, @game
    assert_equal 5, @game.height
    assert_equal 5, @game.width
  end

  def test_that_it_can_generate_a_world
    world = @game.generate_world

    assert_kind_of Array, world
    assert_kind_of Array, world.first
    assert_kind_of Array, world.last
    assert_equal 5, world.length
    assert_equal 5, world.first.length
    assert_equal 5, world.last.length
  end

  def test_it_can_create_a_blank_world
    blank_world = @game.blank_world

    expected = [[nil, nil, nil, nil, nil],
                [nil, nil, nil, nil, nil],
                [nil, nil, nil, nil, nil],
                [nil, nil, nil, nil, nil],
                [nil, nil, nil, nil, nil]]

    assert_equal blank_world, expected
  end

  def test_it_can_create_a_row_range_and_a_column_range
    row_range = @game.row_range
    column_range = @game.column_range

    assert_equal 0..4, row_range
    assert_equal 0..4, column_range
  end

  def test_it_generates!
    first_generation = [[1, 1, 0, 1, 0],
                        [1, 0, 1, 0, 1],
                        [0, 0, 0, 1, 1]]

    range1 = 0..2
    range2 = 0..4

    actual = @game.the_next_generation(range1, range2, first_generation)

    #The game of life creates a blank world based on the
    #initialized default or the height and width attr
    #passed to it. @game is a 5x5 2 dimensional array
    #but I'm testing a 3x5 so I pop off the last two
    #arrays which only contain nil

    actual.pop
    actual.pop

    expected = [[1, 1, 1, 1, 1],
                [1, 0, 1, 0, 1],
                [0, 1, 1, 1, 1]]

    assert_equal expected, actual
  end
end
