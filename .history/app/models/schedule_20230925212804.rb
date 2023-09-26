class Schedule < ApplicationRecord
    validates :title, presence: true,maximum: 20
end
