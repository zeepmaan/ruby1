class Schedule < ApplicationRecord
    validates :title, presence: true,length: { maximum: 20 }
    validates :startdate, presence: true
    validates :enddate,presence: true
    validates :memo,length: { maximum: 500}
    validate :end_datecheck
    def end_datecheck
        if enddate < startdate
        erros.add("終了日は、開始日以降の日付としてください")
        end
    end
end
