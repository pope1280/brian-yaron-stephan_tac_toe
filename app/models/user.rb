require 'bcrypt'

class User < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :matches
  has_many :games, through: :matches



  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
