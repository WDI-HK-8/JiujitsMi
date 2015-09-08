class TechniqueType < ActiveRecord::Base
  belongs_to :postion
  has_many :technique
end
