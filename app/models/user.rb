class User < ApplicationRecord
	has_one :student, foreign_key: "email", class_name: "Student"
	has_many :educational_qualifications
end
