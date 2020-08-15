class User < ApplicationRecord
  has_many :posts
  belongs_to :language_id, class_name: 'Language', foreign_key: 'language_id'
  belongs_to :work_method_id, class_name: 'Learning_method', foreign_key: 'learning_method_id'
  devise :database_authenticatable, :recoverable, :rememberable
end
