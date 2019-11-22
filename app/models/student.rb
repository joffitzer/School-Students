class Student < ApplicationRecord
    belongs_to :school
    validates :name, uniqueness: true
end
