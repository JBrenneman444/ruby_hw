class Character < ApplicationRecord
    belongs_to :vehicle, optional: true
end