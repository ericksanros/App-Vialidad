class Group < ApplicationRecord
  belongs_to  :school
  has_many    :student
end
