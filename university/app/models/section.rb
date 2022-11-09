class Section < ApplicationRecord
  belongs_to :course
  belongs_to :semester
  has_and_belongs_to_many :people
  validates :section, presence: true
  validates :crn, presence: true
  validates :course, presence: true
  validates :semester, presence: true

  def name_course
    "[Semester: #{semester.name} | Section: #{section} | CRN: #{crn}]"
  end

  def name_semester
    "[Course: #{course.name} | Section: #{section} | CRN: #{crn}]"
  end

  def name_full
    "[Semester: #{semester.name} | Course: #{course.name} | Section: #{section}] "
  end
end
