class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.date :interview_date
      t.text :text
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true
      t.references :style, foreign_key: true
    end
  end
end
