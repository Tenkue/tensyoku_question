class Post < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :style
  has_many :post_questions, dependent: :destroy
  has_many :questions, through: :post_questions

  paginates_per 7
end
