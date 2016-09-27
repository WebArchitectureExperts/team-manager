class Address < ApplicationRecord
  has_and_belongs_to_many :people
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
end
