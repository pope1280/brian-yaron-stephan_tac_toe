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
      {turn: "go"}
    else
      {turn: "wait"}
    end
  end
end
