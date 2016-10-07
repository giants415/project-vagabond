class Post < ApplicationRecord
  has_many :post_users, dependent: :destroy
  has_many :users, through: :post_users
end
