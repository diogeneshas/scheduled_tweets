class User < ApplicationRecord
    validates :email, presence: true, uniqueness:true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
    has_secure_password
end
