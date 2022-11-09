class Person < ApplicationRecord
  has_and_belongs_to_many :sections
  validates :name, length: { minimum: 2 }, presence: true
  validates :phone, presence:true, length: { minimum: 10 }
  validates :number, length: { minimum: 9 }, length: { maximum: 9 }
  validates :email, presence: true
  validates :address, presence: true
end
