class Schedule < ApplicationRecord
    validates :title, presence: true,maximum: 30
end
