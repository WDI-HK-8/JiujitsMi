class Technique < ActiveRecord::Base
  belongs_to :technique_type
  has_many :step
end
