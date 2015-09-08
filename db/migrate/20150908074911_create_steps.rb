class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :index
      t.string :instruction
      t.belongs_to :technique
      t.timestamps null: false
    end
  end
end
