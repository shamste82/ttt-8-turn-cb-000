def display_board(board):
  puts "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input):
  user_input = Integer(input) rescue false
  if user_input
    user_input = user_input - 1
    return user_input
  else
    return - 1
  end
end

def position_taken(board, index):
  case board[index]:
  when "X"
    return false
  when "O"
    return false
  else
    return true
  end
end

def valid_move(board, index):
  if index < 9 and index >= 0
    if position_taken(board, index)
      return true
  end
  return false
end
