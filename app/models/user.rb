class User < ApplicationRecord
    has_many :exercises
    has_many :patients, through: :exercises
    has_secure_password
end
