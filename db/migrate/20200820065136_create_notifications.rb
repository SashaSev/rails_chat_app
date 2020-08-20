# frozen_string_literal: true

class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.boolean :viewed, default: false
      t.timestamps
    end
  end
end
