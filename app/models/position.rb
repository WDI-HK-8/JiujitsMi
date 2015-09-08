class Position < ActiveRecord::Base
  belongs_to :user
  has_many :technique_type
end
