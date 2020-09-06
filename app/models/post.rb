class Post < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :style
  has_many :post_questions, dependent: :destroy
  has_many :questions, through: :post_questions
  # accepts_nested_attributes_for :style
  # accepts_nested_attributes_for :place
end
