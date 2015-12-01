class Step < ActiveRecord::Base
  belongs_to :technique
  validates :instruction, length: { maximum: 1202 } 
end
