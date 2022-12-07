class AddAuthorToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :author, :string
  end
end
