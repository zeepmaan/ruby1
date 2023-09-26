class Schedule < ApplicationRecord
    validates :title, presence: true,length: { maximum: 20 }
    validates :startdate, presence: true
    validates :enddate,presence: true
    validates :memo,length: { maximum: 500}
    validate :end_datecheck
end

def start_end_check
    errors.add(:end_date, "は開始日より前の日付は登録できません。") unless
    self.start_date < self.end_date 
    end
end



