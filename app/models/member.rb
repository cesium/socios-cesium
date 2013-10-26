class Member < ActiveRecord::Base
  has_one :location
  has_one :course
  has_one :responsible, class_name: "Member", foreign_key: "responsible_id"
  has_many :pupils, class_name: "Member", foreign_key: "responsible_id"

end
