class TechniqueType < ActiveRecord::Base
  belongs_to :position
  has_many :techniques, dependent: :destroy
  validates :name, length: { maximum: 32 }
end
