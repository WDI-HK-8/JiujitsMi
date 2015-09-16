class AddIndexToTechniques < ActiveRecord::Migration
  def change
    change_table :techniques do |t|
      t.integer :index
    end
  end
end
