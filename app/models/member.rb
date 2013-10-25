class Member < ActiveRecord::Base
	validates :name, presence: true
    validates :member_number, presence: true, uniqueness: true
    validates :email, presence: true, email: true, uniqueness: true
    validates :phone, phone: true
end
