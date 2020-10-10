class User < ApplicationRecord
    has_many :exercises
    has_many :patients, through: :exercises
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

end
