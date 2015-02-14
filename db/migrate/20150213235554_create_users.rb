class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :country
      t.integer :day_of_birth
      t.integer :month_of_birth
      t.integer :year_of_birth

      t.timestamps null: false
    end
  end
end
