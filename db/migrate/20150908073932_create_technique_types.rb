class CreateTechniqueTypes < ActiveRecord::Migration
  def change
    create_table :technique_types do |t|
      t.string :name
      t.string :order_array
      t.belongs_to :position
      t.timestamps null: false
    end
  end
end
