class User < ApplicationRecord
    has_secure_password
  
    has_many :recipes
  
    validates :username, presence: true, uniqueness: true
    validates :password, confirmation: true, if: :password_present?

  private

  def password_present?
    password.present?
  end
end


  