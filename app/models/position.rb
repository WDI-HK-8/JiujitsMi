class Position < ActiveRecord::Base
  belongs_to :user
  has_many :technique_types, dependent: :destroy
end
