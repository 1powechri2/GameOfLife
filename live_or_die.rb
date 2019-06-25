module LiveOrDie
  def game_of_life(range1, range2, row_index, column_index, world)
    #check top right corner
    if row_index == 0 && column_index == 0
      top_left_corner = 0
      top_center = 0
      top_right_corner = 0
      left_center = 0
      right_center = world[row_index][column_index + 1]
      bottom_left_corner = 0
      bottom_center = world[row_index + 1][column_index]
      bottom_right_corner = world[row_index + 1][column_index + 1]
    #check top left corner
    elsif row_index == 0 && column_index == range2.last
      top_left_corner = 0
      top_center = 0
      top_right_corner = 0
      left_center = world[row_index][column_index - 1]
      right_center = 0
      bottom_left_corner = world[row_index + 1][column_index - 1]
      bottom_center = world[row_index + 1][column_index]
      bottom_right_corner = 0
    #check bottom left corner
    elsif row_index == range1.last && column_index == 0
      top_left_corner = 0
      top_center = world[row_index - 1][column_index]
      top_right_corner = world[row_index - 1][column_index + 1]
      left_center = 0
      right_center = world[row_index][column_index + 1]
      bottom_left_corner = 0
      bottom_center = 0
      bottom_right_corner = 0
    #check bottom right corner
    elsif row_index == range1.last && column_index == range2.last
      top_left_corner = world[row_index - 1][column_index - 1]
      top_center = world[row_index - 1][column_index]
      top_right_corner = 0
      left_center = world[row_index][column_index - 1]
      right_center = 0
      bottom_left_corner = 0
      bottom_center = 0
      bottom_right_corner = 0
    #check top row
    elsif row_index == 0
      top_left_corner = 0
      top_center = 0
      top_right_corner = 0
      left_center = world[row_index][column_index - 1]
      right_center = world[row_index][column_index + 1]
      bottom_left_corner = world[row_index + 1][column_index - 1]
      bottom_center = world[row_index + 1][column_index]
      bottom_right_corner = world[row_index + 1][column_index + 1]
    #check left row
    elsif column_index == 0
      top_left_corner = 0
      top_center = world[row_index - 1][column_index]
      top_right_corner = world[row_index - 1][column_index + 1]
      left_center = 0
      right_center = world[row_index][column_index + 1]
      bottom_left_corner = 0
      bottom_center = world[row_index + 1][column_index]
      bottom_right_corner = world[row_index + 1][column_index + 1]
    #check right row
    elsif column_index == range2.last
      top_left_corner = world[row_index - 1][column_index - 1]
      top_center = world[row_index - 1][column_index]
      top_right_corner = 0
      left_center = world[row_index][column_index - 1]
      right_center = 0
      bottom_left_corner = world[row_index + 1][column_index - 1]
      bottom_center = world[row_index + 1][column_index]
      bottom_right_corner = 0
    #check bottom row
    elsif row_index == range1.last
      top_left_corner = world[row_index - 1][column_index - 1]
      top_center = world[row_index - 1][column_index]
      top_right_corner = world[row_index - 1][column_index + 1]
      left_center = world[row_index][column_index - 1]
      right_center = world[row_index][column_index + 1]
      bottom_left_corner = 0
      bottom_center = 0
      bottom_right_corner = 0
    else
      top_left_corner = world[row_index - 1][column_index - 1]
      top_center = world[row_index - 1][column_index]
      top_right_corner = world[row_index - 1][column_index + 1]
      left_center = world[row_index][column_index - 1]
      right_center = world[row_index][column_index + 1]
      bottom_left_corner = world[row_index + 1][column_index - 1]
      bottom_center = world[row_index + 1][column_index]
      bottom_right_corner = world[row_index + 1][column_index + 1]
    end

    top_left_corner + top_center + top_right_corner + left_center + right_center + bottom_left_corner + bottom_center + bottom_right_corner
  end
end
