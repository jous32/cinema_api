class Person < ApplicationRecord
  validates :national_id, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
