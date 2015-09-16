class AddIndexToPosition < ActiveRecord::Migration
  def change
    change_table :positions do |t|
      t.integer :index
    end
  end
end
