class CreateUserVideos < ActiveRecord::Migration
  def change
    create_table :user_videos do |t|
      t.belongs_to :technique
      t.string :provided_id
      t.string :name
      t.integer :size
      t.integer :cost
      t.string :duration
      t.string :url
      t.string :ssl_url
      t.string :thumb_name
      t.integer :thumb_size
      t.integer :thumb_cost
      t.string :thumb_url
      t.string :thumb_ssl_url
      t.timestamps null: false
    end
  end
end





