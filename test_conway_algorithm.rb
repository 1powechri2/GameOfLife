require 'minitest/autorun'
require './conway_algorithm'
require 'pry'

class TestConwayAlgorithm < Minitest::Test
  include LiveOrDie

  def setup
    @surrounded_by_1 = [[1, 0, 0],
                        [0, 0, 0],
                        [0, 0, 0]]

    @surrounded_by_2 = [[1, 1, 0],
                        [0, 0, 0],
                        [0, 0, 0]]

    @surrounded_by_3 = [[1, 1, 1],
                        [0, 0, 0],
                        [0, 0, 0]]

    @surrounded_by_4 = [[1, 1, 1],
                        [0, 0, 1],
                        [0, 0, 0]]

    @surrounded_by_5 = [[1, 1, 1],
                        [0, 0, 1],
                        [0, 0, 1]]

    @surrounded_by_6 = [[1, 1, 1],
                        [0, 0, 1],
                        [0, 1, 1]]

    @surrounded_by_7 = [[1, 1, 1],
                        [0, 0, 1],
                        [1, 1, 1]]

    @surrounded_by_8 = [[1, 1, 1],
                        [1, 0, 1],
                        [1, 1, 1]]
  end

  def test_conway_algorithm
    range1 = 0..2
    range2 = 0..2

    test1 = conway_algorithm(range1, range2, 1, 1, @surrounded_by_1)
    test2 = conway_algorithm(range1, range2, 1, 1, @surrounded_by_2)
    test3 = conway_algorithm(range1, range2, 1, 1, @surrounded_by_3)
    test4 = conway_algorithm(range1, range2, 1, 1, @surrounded_by_4)
    test5 = conway_algorithm(range1, range2, 1, 1, @surrounded_by_5)
    test6 = conway_algorithm(range1, range2, 1, 1, @surrounded_by_6)
    test7 = conway_algorithm(range1, range2, 1, 1, @surrounded_by_7)
    test8 = conway_algorithm(range1, range2, 1, 1, @surrounded_by_8)

    assert_equal 0, test1
    assert_equal 1, test2
    assert_equal 1, test3
    assert_equal 0, test4
    assert_equal 0, test5
    assert_equal 0, test6
    assert_equal 0, test7
    assert_equal 0, test8
  end

end
