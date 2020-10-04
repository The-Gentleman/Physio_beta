class User < ApplicationRecord
    has_many :exercises
    has_many :patients, through: :exercises
end
