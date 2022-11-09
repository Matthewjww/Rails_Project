class Course < ApplicationRecord
  belongs_to :prefix
  has_many :sections, :dependent => :destroy
  validates :name, presence: true
  validates :course, presence: true
  validates :prefix, presence: true


  def short_name
    "#{prefix.prefix}#{course}"
  end

end
