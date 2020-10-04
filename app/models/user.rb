class User < ApplicationRecord
    has_many :exercises
    has_many :patients, through: :exercises
    has_secure_password

    # TO DO:
    # CREATE VALIDATIONS FOR USERNAME AND PASSWORD
end
