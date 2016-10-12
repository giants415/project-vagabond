class Post < ApplicationRecord
  belongs_to :user
  belongs_to :city

    validates :title,
      presence: true,
      length: { in: 1..200 }

    validates :content,
      presence: true

end
