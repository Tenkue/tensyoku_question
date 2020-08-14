class CreateLearningMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :learning_methods do |t|

      t.string  :method
      t.timestamps
    end
  end
end
