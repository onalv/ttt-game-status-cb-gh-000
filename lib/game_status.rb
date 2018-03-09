# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
      return win_combo
    elsif (board[win_combo[0]]) == "O" && (board[win_combo[1]]) == "O" && (board[win_combo[2]]) == "O"
      return win_combo
    end
      false
  end
end


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
print won?(board) #false
board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
print won?(board) #false
board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]
print won?(board) #[0,1,2]
board = ["O", "O", " ", "X", "X", "X", " ", " ", " "]
print won?(board) #[3,4,5]
board = [" ", " ", " ", "O", "O", " ", "X", "X", "X"]
print won?(board) #[6,7,8]
board = ["O", " ", "X", "O", " ", "X", "O", " ", " "]
print won?(board)
board = ["X", "O", " ", "X", "O", " ", " ", "O", " "]
print won?(board)
board = ["X", " ", "O", "X", " ", "O", " ", " ", "O"]
print won?(board)
board = ["X", " ", "O", " ", "X", "O", " ", " ", "X"]
print won?(board)
board = ["X", " ", "O", "X", "O", " ", "O", " ", " "]
print won?(board)
