class AddColumnTurn < ActiveRecord::Migration
  def change
    add_column :matches, :turn, :integer
  end
end
