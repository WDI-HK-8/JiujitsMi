class Position < ActiveRecord::Base
  belongs_to :user
  has_many :technique_types, dependent: :destroy
  validates :name, length: { maximum: 62 }
end
