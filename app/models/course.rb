class Course < ActiveRecord::Base
  has_many :members

  validates :name, presence: true, uniqueness: true

  def to_s
    name
  end
end
