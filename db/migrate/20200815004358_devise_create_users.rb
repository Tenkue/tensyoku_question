# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :nickname, null: false
      t.string :image
      t.string :encrypted_password, null: false, default: ""
      t.references :language, foreign_key: true
      t.references :learning_method, foreign_key: true

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      
      t.timestamps null: false
    end
  end
end