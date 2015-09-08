class TechniqueType < ActiveRecord::Base
  belongs_to :position
  has_many :techniques
end
