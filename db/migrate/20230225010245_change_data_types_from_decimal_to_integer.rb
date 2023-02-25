class ChangeDataTypesFromDecimalToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :posts_counter, :integer
    change_column :posts, :comments_counter, :integer
    change_column :posts, :likes_counter, :integer
  end
end
