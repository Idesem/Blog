class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
                    length: { in: 5..100 },
                    uniqueness: true
end
