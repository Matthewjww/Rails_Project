class Semester < ApplicationRecord
  has_many :sections, :dependent => :destroy
  validates :year, length: {minimum: 4}, length: {maximum: 4}
  validates :semester, inclusion: { in: %w(Fall Spring Summer Winter)}

  def name
    "#{semester} #{year}"
  end
end
