class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id, :user2_id, :game_id, :winner_id
      t.string :board
    end
  end
end
