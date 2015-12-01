class Technique < ActiveRecord::Base
  belongs_to :technique_type
  has_many :steps, dependent: :destroy
  validates :name, length: { maximum: 62 }  
  validates :other_notes, length: { maximum: 2002 }  
end
