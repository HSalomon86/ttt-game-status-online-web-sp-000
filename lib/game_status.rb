# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left side
  [1,4,7], # Center vertical
  [2,5,8], # Right Side
  [2,4,6], # Diagnol 1
  [0,4,8] # Diagnol 2
]
def won?(board)
  WIN_COMBINATIONS.each do |wins|
    wins.each do |index|

    win_index_1 = index[0]
    win_index_2 = index[1]
    win_index_3 = index[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 =baord[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return wins
    else
      return false
    end
  end
end
end
def full?(board)
  board.each do |full|
    if full != "X" || full != "O"
      return false
    else
      return true
    end
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) == true || full?(board) == true || draw?(board) == true
    return true
  else
    return false
  end
end
