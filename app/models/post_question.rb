class PostQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :post
end