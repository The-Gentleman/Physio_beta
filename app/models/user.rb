class User < ApplicationRecord
    has_many :exercises
    has_many :patients, through: :exercises
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    def self.from_google(auth)
        User.find_or_create_by(username:auth[:info][:first_name], uid: auth[:uid]) do |user|
            user.username = auth[:info][:name]
            user.password = SecureRandom.hex(15)
        end 
      end


end
