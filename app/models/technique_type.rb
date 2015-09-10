class TechniqueType < ActiveRecord::Base
  belongs_to :position
  has_many :techniques, dependent: :destroy
end
