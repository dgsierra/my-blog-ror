class RemoveAuthorFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :author, :string
  end
end
