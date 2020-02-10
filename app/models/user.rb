class User < ApplicationRecord
    has_many :updates
    has_many :subways, through: :updates
    has_many :uls
    has_many :stations, through: :uls
end
