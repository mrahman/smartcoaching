class Student < ApplicationRecord
	belongs_to :user, foreign_key: "user_id", class_name: "User"
        has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
        # Validate content type
        validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
        # Validate filename
        validates_attachment_file_name :avatar, matches: [/png\z/, /jpe?g\z/]
        has_many :student_comments, dependent: :destroy
	has_many :educational_qualifications, :through => :user
        validates :first_name, presence: true,
                    length: { minimum: 3 }
        validates :last_name, presence: true,
                    length: { minimum: 3 }
        validates :dob, presence: true,
                    length: { minimum: 6 }
        validates :interests, presence: true
        validates :address, presence: true
end
