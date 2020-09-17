class User < ApplicationRecord
  has_many :posts
  has_many :user_languages, dependent: :destroy
  has_many :languages, through: :user_languages
  belongs_to :learning_method
  devise :database_authenticatable, :recoverable, :rememberable,:registerable, :authentication_keys => [:nickname]
  accepts_nested_attributes_for :learning_method
end
