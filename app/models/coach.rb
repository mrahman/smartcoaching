class Coach < ApplicationRecord
        has_many :coach_comments, dependent: :destroy
	validates :name, presence: true,
                    length: { minimum: 3 }
	validates :subject_or_topics, presence: true
	validates :address, presence: true
end
