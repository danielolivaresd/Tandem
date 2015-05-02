class AddConfirmedToMatchLanguages < ActiveRecord::Migration
  def change
    add_column :match_languages, :confirmed, :boolean, default: false
  end
end
