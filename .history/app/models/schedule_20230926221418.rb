class Schedule < ApplicationRecord
    validates :title, presence: true,length: { maximum: 20 }
    validates :startdate, presence: true
    validates :enddate,presence: true
    validates :memo,length: { maximum: 500}
    validate :datecheck
end

    def datecheck 
    binding.pry
     if @schedule.startdate > @schedule.enddate 
     errors.add(:enddate, "は開始日より前の日付は登録できません。") 
     end
    end