class Schedule < ApplicationRecord
    validates :title, presence: true,length: { in: 10..30 }
end
