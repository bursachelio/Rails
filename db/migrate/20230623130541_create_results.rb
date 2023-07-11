# frozen_string_literal: true

class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
