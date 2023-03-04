#user(has many tasks) inherits from activerecord.
require 'bcrypt'

class User < ActiveRecord::Base
  has_many :tasks

  validates :username, presence: true, uniqueness: true
  validates :password_hash, presence: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    return nil unless user
    return user if BCrypt::Password.new(user.password_hash) == password
    nil
  end
end
