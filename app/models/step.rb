class Step < ActiveRecord::Base
  belongs_to :technique
  validates :instruction, length: { maximum: 500 } 
end
