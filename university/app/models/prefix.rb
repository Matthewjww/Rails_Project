class Prefix < ApplicationRecord
  has_many :courses, :dependent => :destroy
  validates :prefix, length: { minimum: 2 }, length: { maximum: 3}
end
