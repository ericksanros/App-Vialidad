class School < ApplicationRecord
has_many    :group  
has_many    :student, through: :group
end
