class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :user_language, index: true
      t.float :cost
      t.integer :sessions
      t.string :session_mode
      t.string :start_date
      t.string :end_date
      t.string :city

      t.timestamps null: false
    end
    add_foreign_key :offers, :user_languages
  end
end
