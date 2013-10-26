class Location < ActiveRecord::Base
  has_many :members
  #belongs_to :members

  validates :name, presence: true
end
