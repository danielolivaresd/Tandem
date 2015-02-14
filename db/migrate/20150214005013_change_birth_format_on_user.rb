class ChangeBirthFormatOnUser < ActiveRecord::Migration
  def change
  	remove_column :users, :day_of_birth
  	remove_column :users, :month_of_birth
  	remove_column :users, :year_of_birth
  	add_column :users, :birth_date, :date
  end
end
