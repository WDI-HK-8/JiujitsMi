class CreateUserVideos < ActiveRecord::Migration
  def change
    create_table :user_videos do |t|
      t.integer :index
      t.attachment :video
      t.belongs_to :technique
      t.timestamps null: false
    end
  end
end
