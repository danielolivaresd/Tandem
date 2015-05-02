class RemoveConfirmeFromMatchLanguages < ActiveRecord::Migration
  def change
    remove_column :match_languages, :confirmed, :boolean
  end
end
