class Station < ApplicationRecord
    has_many :uls
    has_many :users, through: :uls
    has_many :trains
    has_many :subways, through: :trains
end
