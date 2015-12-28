class AddLastPositionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_position, :integer
  end
end
