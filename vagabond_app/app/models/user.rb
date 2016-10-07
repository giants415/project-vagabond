class User < ApplicationRecord
  has_secure_password
  has_many :post_users, dependent: :destroy
  has_many :posts, through: :post_users

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
