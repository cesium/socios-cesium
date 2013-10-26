class Member < ActiveRecord::Base
  has_one :location
  has_one :course
  has_one :responsible, class_name: "Member", foreign_key: "responsible_id"
  has_many :pupils, class_name: "Member", foreign_key: "responsible_id"

  validates :name, presence: true
  validates :member_number, presence: true, uniqueness: true
  validates :email, presence: true, email: true, uniqueness: true
  validates :phone, phone: true, presence: false
end
