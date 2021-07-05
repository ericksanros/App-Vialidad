class School < ApplicationRecord
has_many    :groups  
has_many    :students, through: :group
end
