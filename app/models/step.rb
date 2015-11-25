class Step < ActiveRecord::Base
  belongs_to :technique
  validates :instruction, length: { maximum: 1000 } 
end
