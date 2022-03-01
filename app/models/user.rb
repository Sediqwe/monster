class User < ApplicationRecord
    has_secure_password
    before_save { self.username = username.downcase }
    validates :email, uniqueness: true, presence: true
    validates :password, presence: true, length: {minimum: 8, maximum:20}
    validates :username, uniqueness: true, presence: true, length: {minimum: 3, maximum:20}

end
