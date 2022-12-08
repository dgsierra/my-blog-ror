class ChangeColumnLikesCounterFromPosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :comments_counter, :integer, default: 0
    #Ex:- :default =>''
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    change_column :posts, :likes_counter, :integer, default: 0
  end
end
