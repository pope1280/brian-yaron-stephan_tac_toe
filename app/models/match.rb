class Matches < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  def board_pull
    self.board
  end

  def turn(user_id)
    if self.user_id == user_id
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
end
