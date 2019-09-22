class User < ApplicationRecord
	has_many :comments
	validates :username, presence: true, uniqueness: {case_sensitive: false}, 
				length: {minimum: 5, maximum: 30}

	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i			
	validates :email, presence: true, uniqueness: {case_sensitive: false},
				length: {minimum: 5,maximum: 15 },
				format: {with: VALID_EMAIL_REGEX}
end
