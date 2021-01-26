class User < ApplicationRecord
    has_many :articles
    before_save { self.email.downcase! }
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length:
     {minimum: 3, maximum: 13}
    VALID_EMAIL_REGEX = /.+\@.+\..r/i

     validates :email, presence: true, uniqueness: { case_sensitive: false }, format:
     { with: VALID_EMAIL_REGEX } 

     has_secure_password
end