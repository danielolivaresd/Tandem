class CreateMatchUsers < ActiveRecord::Migration
  def change
    create_table :match_users do |t|
      t.references :match, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :match_users, :matches
    add_foreign_key :match_users, :users
  end
end
