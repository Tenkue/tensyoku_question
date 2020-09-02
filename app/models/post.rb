class Post < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :style
  has_many :post_questions, through: :post_questions
end
