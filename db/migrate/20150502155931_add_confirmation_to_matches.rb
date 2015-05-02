class AddConfirmationToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :confirmed, :boolean, default: false
  end
end
