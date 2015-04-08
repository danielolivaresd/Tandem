class CreateLanguageInterests < ActiveRecord::Migration
  def change
    create_table :language_interests do |t|
      t.references :user, index: true
      t.references :language, index: true
      t.integer :actual_level

      t.timestamps null: false
    end
    add_foreign_key :language_interests, :users
    add_foreign_key :language_interests, :languages
  end
end
