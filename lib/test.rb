def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == position_2 && position_2 == position_3
      return win_combination
    else
      false
    end
  end
end

won?([" ", " ", " ", " ", " ", " ", " ", " ", " "])
won?([" ", " ", " ", " ", " ", " ", " ", " ", " "])
won?([" ", " ", " ", " ", " ", " ", " ", " ", " "])
won?([" ", " ", " ", " ", " ", " ", " ", " ", " "])
won?([" ", " ", " ", " ", " ", " ", " ", " ", " "])