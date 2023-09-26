class Schedule < ApplicationRecord
    validates :title, presence: true,length: { maximum: 20 }
    validates :startdate, presence: true
    validates :enddate,presence: true
    validates :memo,length: { maximum: 500}
    validates start_end_check
    def start_end_check
        errors.add(:enddate,"日付を正しく記入してください")unless
        self.startdate < self.enddate 
    end
