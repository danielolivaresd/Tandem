class AddRequestedByAndConfirmedToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :requested_by, :integer
    add_column :matches, :confirmed, :boolean
  end
end
