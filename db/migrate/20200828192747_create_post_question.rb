class CreatePostQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :post_questions do |t|
      t.references :post, foreign_key: true
      t.references :question, foreign_key: true
    end
  end
end
