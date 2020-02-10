class Subway < ApplicationRecord
    has_many :trains
    has_many :updates 
    has_many :users, through: :updates
    has_many :stations, through: :trains 
end
