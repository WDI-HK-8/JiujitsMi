class RemoveCountryFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :country
    remove_column :users, :username
  end
end
