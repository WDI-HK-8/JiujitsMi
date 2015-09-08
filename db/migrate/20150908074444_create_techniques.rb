class CreateTechniques < ActiveRecord::Migration
  def change
    create_table :techniques do |t|
      t.string :name
      t.string :video_url
      t.string :other_notes
      t.string :order_array
      t.belongs_to :technique_type
      t.timestamps null: false
    end
  end
end
