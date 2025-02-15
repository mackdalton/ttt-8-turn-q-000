

def welcome
  puts "Welcome to Tic Tac Toe!"
end

def display_board(board) 

    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  move = position.to_i - 1
  if move.between?(0 , 8) 
    if !position_taken?(board, position.to_i - 1)
      true
  else
    false
    end
  end

end


def position_taken?(board, position)
  if board[position] == (" ") || board[position] == ("") || board[position] == nil
    false
  elsif board[position] == ("X") || board[position] == ("O") 
    true
  end
end



def move(board, position, value = "X")
  board[position.to_i - 1] = value
  
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, value = "X")
  else
      puts "Please enter 1-9:"
      position = gets.strip
  end
    display_board(board)
end
