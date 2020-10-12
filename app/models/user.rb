class User < ApplicationRecord
    has_many :exercises
    has_many :patients, through: :exercises
    has_secure_password
    validates :username, presence: true, uniqueness: true

    def self.from_google(auth)
        self.find_or_create_by(username: auth[:info][:name], uid: auth[:uid]) do |user|
            user.username = auth[:info][:name]
            user.uid = auth[:uid]
            user.password = SecureRandom.hex(15)
        end 
    end

class UserNotFound < StandardError
    def error 
        "User cannot be found"
    end 
end 
    
end
