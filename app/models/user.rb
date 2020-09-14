class User < ApplicationRecord
  has_many :posts
  belongs_to :language
  belongs_to :learning_method
  devise :database_authenticatable, :recoverable, :rememberable,:registerable, :authentication_keys => [:nickname]
  accepts_nested_attributes_for :language,:learning_method
  mount_uploader :image, ImageUploader
end
