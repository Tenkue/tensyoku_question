class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :users, :languages
    remove_index :users, :language_id
    remove_reference :users, :language
  end
end
