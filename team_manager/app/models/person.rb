class Person < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :DOB
  validates_presence_of :gender
  has_many :phones
  has_and_belongs_to_many :addresses
  has_many :teams
end
