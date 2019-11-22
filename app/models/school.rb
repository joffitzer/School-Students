class School < ApplicationRecord
    has_many :students
    validates :name, uniqueness: :true 
end
