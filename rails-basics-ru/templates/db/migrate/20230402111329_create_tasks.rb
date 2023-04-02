# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.string :status, null: false, default: :new
      t.string :creator
      t.string :performer
      t.boolean :completed, null: false, default: false

      t.timestamps
    end
  end
end
