class Phone < ApplicationRecord
  belongs_to :person
  validates_presence_of :number
  validates_presence_of :phone_type
end
