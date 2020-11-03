class AddBookNewIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :book_new_id, :integer
  end
end
