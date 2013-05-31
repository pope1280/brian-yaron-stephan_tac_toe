class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :password_hash, :email
      t.integer :game_play, :game_won
      t.timestamps
    end
  end
end
