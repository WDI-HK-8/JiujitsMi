class AddProficiencyToTechniques < ActiveRecord::Migration
  def change
    add_column :techniques, :proficiency, :string
  end
end
