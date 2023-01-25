class User < ApplicationRecord
  has_secure_password

  before_save :downcase

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def downcase
    nickname.downcase!
    email.downcase!
  end
end
