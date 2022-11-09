# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Person.create!(name: "Joe Smith",phone: 1231231234, email: "hello@me.com", address: "test", number: 900000001)
Person.create!(name: "El Hooper",phone: 1231231234, email: "hello@me.com", address: "test", number: 900000002)
Person.create!(name: "Frank Hooper",phone: 1231231234, email: "hello@me.com", address: "test", number: 900000003)
Person.create!(name: "Steve Cook",phone: 1231231234, email: "hello@me.com", address: "test", number: 900000004)

Prefix.create!(prefix: "CS")
Prefix.create!(prefix: "MTH")
Prefix.create!(prefix: "ENG")

Semester.create!(semester: "Spring", year:2023)
Semester.create!(semester: "Fall", year:2023)
Semester.create!(semester: "Fall", year:2023)

Course.create!(name: "Web App Dev", course: 3170, prefix_id: 1)
Course.create!(name: "Calc 1", course: 2110, prefix_id: 2)
Course.create!(name: "Speech", course: 1010, prefix_id: 3)

Section.create!(section: 001, crn: 500001, course_id: 2, semester_id: 1)
Section.create!(section: 002, crn: 500002, course_id: 1, semester_id: 2)
Section.create!(section: 003, crn: 500003, course_id: 1, semester_id: 1)
Section.create!(section: 001, crn: 500011, course_id: 3, semester_id: 3)

PeopleSections.create!(person_id: 1, section_id: 1)
PeopleSections.create!(person_id: 1, section_id: 2)
PeopleSections.create!(person_id: 2, section_id: 2)
PeopleSections.create!(person_id: 3, section_id: 1)