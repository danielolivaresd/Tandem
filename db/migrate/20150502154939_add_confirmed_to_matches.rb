class AddConfirmedToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :confirme, :boolean, default: false
  end
end
