def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]
  } \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
 index.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if position_taken?(board, index)
      return false
    else
      return true
    end
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, user)
    board[index] = user
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index_updated = input_to_index(index)

  if valid_move?(board, index_updated)
      move(board, index_updated, "X")
      display_board(board)
  else
      turn(board)
  end
end