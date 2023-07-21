class RemoveUniqueIndexFromTests < ActiveRecord::Migration[7.0]
  def change
    remove_index :tests, [:title, :level]
  end
end
