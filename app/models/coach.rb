class Coach < ApplicationRecord
        has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
        # Validate content type
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	# Validate filename
	validates_attachment_file_name :avatar, matches: [/png\z/, /jpe?g\z/]
        has_many :coach_comments, dependent: :destroy
	validates :first_name, presence: true,
                    length: { minimum: 3 }
	validates :last_name, presence: true,
                    length: { minimum: 3 }
	validates :dob, presence: true,
                    length: { minimum: 6 }
	validates :subject_or_topics, presence: true
	validates :address, presence: true
end
