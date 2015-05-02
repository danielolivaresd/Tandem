class RemoveConfirmeFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :confirme, :boolean
  end
end
