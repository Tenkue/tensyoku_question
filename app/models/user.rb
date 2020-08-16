class User < ApplicationRecord
  has_many :posts
  belongs_to :language
  belongs_to :learning_method
  devise :database_authenticatable, :recoverable, :rememberable
end
