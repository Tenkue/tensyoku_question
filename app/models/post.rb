class Post < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :style
  has_many :post_questions, dependent: :destroy
  has_many :questions, through: :post_questions

  paginates_per 7

  #質問のカウントを1増やす仕組み
  def counter
    self.questions.each do |question|
      counter = question.counter.to_i
      counter += 1
      question.update(counter: counter)
    end
  end
end
