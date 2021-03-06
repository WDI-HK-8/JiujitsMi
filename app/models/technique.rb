class Technique < ActiveRecord::Base
  belongs_to :technique_type
  has_many :steps, dependent: :destroy
  has_many :user_videos, dependent: :destroy
  validates :name, length: { maximum: 62 }  
  validates :other_notes, length: { maximum: 2002 }
  validates :video_url, :url => true
end
