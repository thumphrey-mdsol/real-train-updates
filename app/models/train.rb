class Train < ApplicationRecord
    belongs_to :subway
    belongs_to :station
end
