class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :name, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :github_login, presence: true, uniqueness: { case_sensitive: false }
  validates :access_token, presence: true
  # has_secure_password
  # validates :password, length: { minimum: 6 }
end
