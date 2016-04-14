def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  while valid_move?(board, input) != true
    turn(board)
    break
  end
    move(board,input)
    display_board(board)
end

def display_board(board)
  puts " #{board[0]} " + '|' + " #{board[1]} " + '|' + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + '|' + " #{board[4]} " + '|' + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + '|' + " #{board[7]} " + '|' + " #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) == false
    return false
  end
  if position_taken?(board, position.to_i - 1) == false
    return true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" \
    || board[position] == nil
    return false
  else
    return true
  end
end

def move(board, position, value = "X")
  board[position.to_i - 1] = value
end
