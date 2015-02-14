class AddGmailAndSkypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :gmail, :string
    add_column :users, :skype, :string
  end
end
