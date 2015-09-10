class Technique < ActiveRecord::Base
  belongs_to :technique_type
  has_many :steps, dependent: :destroy
end
