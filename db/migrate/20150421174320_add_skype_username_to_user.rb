class AddSkypeUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :skype_username, :string
  end
end
