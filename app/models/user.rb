class User < ApplicationRecord
    has_many :posts
    
    has_secure_password

    validates :username, presence: true, uniqueness: {message: "already in use"}
    validates :password, presence: {message: "is required"}
end
