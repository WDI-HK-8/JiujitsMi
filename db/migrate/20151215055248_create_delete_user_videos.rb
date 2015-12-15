class CreateDeleteUserVideos < ActiveRecord::Migration
  def change
    create_table :delete_user_videos do |t|
      t.integer :user_id 
      t.integer :technique_id 
      t.integer :video_id 
      t.string :name 
      t.integer :size  
      t.string :ssl_url  
      t.string :thumb_name
      t.integer :thumb_size
      t.string :thumb_ssl_url
      t.timestamps null: false
    end
  end
end
