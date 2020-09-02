class Question < ApplicationRecord
  has_many :post_questions, dependent: :destroy
  has_many :posts, through: :post_questions
end
