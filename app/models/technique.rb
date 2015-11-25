class Technique < ActiveRecord::Base
  belongs_to :technique_type
  has_many :steps, dependent: :destroy
  validates :name, length: { maximum: 40 }  
  validates :other_notes, length: { maximum: 2000 }  
end
