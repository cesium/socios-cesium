class Member < ActiveRecord::Base
  belongs_to :location
  belongs_to :course
  belongs_to :responsible, class_name: "Member", foreign_key: "responsible_id"
  has_many :pupils, class_name: "Member", foreign_key: "responsible_id"

  validates :name, presence: true
  validates :member_number, presence: true, uniqueness: true
  validates :email, presence: true, email: true, uniqueness: true
  validates :phone, phone: true, presence: false, uniqueness: true

  def to_s
    name
  end

  def clean_birthday
    if birthday
      birthday.strftime("%d-%m-%Y");
    else
      ""
    end
  end
end
