class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :index
      t.string :name
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
