class AddIndexToTechniqueType < ActiveRecord::Migration
  def change
    change_table :technique_types do |t|
      t.integer :index
    end
  end
end
