class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :title, default: "Default Title"
      t.integer :level, default: 1, null: false
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
