class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :name, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :github_login, presence: true, uniqueness: { case_sensitive: false }
  validates :access_token, presence: true
  # has_secure_password
  # validates :password, length: { minimum: 6 }

  # http://ruby-rails.hatenadiary.com/entry/20150221/1424489524
  # https://github.com/norman/friendly_id#what-changed-in-version-50
  include FriendlyId
  friendly_id :github_login, use: [:slugged, :finders]


  def should_generate_new_friendly_id?
    name_changed?
  end
end
