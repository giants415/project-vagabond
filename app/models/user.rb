class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.][a-z]+\z/i

  validates :username,
            presence: true,
            uniqueness: true,
            length: { minimum: 6 }

  validates :first_name,
            presence: true

  validates :email,
            presence: true,
            # format: { with: VALID_EMAIL_REGEX },
            uniqueness: true,
            length: { maximum: 255 }


  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
