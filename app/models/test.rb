class Test < ActiveRecord::Base
  belongs_to :user
  has_many :quetions
end
