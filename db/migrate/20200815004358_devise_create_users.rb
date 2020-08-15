# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :name, null: false
      t.string :nickname, null: false
      t.string :image
      t.string :encrypted_password, null: false, default: ""
      t.integer :language_id
      t.integer :work_method_id


      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      
      t.timestamps null: false
    end
  end
end