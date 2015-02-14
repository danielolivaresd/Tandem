class ChangeDateFormatOnOffers < ActiveRecord::Migration
  def change
  	change_column :offers, :start_date, :date
  	change_column :offers, :end_date, :date
  end
end

