class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  def board_pull
    self.board
  end

  def player_turn(id)
    if self.user_id == id
      return check_turn("1")
    else
      return check_turn("2")
    end
  end

  def check_turn(id)
    if self.turn == id
      {turn: "go", board: self.board}
    else
      {turn: "wait"}
    end
  end

  def update_board(move_id)
    old_board = self.board.split('')
    if self.user_id == id
      old_board[move_id.to_i - 1] = "1"
      self.turn = "2"
    else
      old_board[move_id.to_i - 1] = "2"
      self.turn = "1"
    end
    old_board.join('')
  end

end
