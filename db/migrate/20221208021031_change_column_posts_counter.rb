class ChangeColumnPostsCounter < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :posts_counter, :integer, default: 0
    #Ex:- :default =>''
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
