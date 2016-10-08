class Post < ApplicationRecord
  belongs_to :user
  belongs_to :city

    validates :title,
      presence: true

    validates :content,
      presence: true

end
