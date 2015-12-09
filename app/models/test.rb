class Test < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :candidates
end
