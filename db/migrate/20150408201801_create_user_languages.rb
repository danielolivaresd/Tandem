class CreateUserLanguages < ActiveRecord::Migration
  def change
    create_table :user_languages do |t|
      t.references :user, index: true
      t.references :language, index: true
      t.integer :level
      t.boolean :is_native

      t.timestamps null: false
    end
    add_foreign_key :user_languages, :users
    add_foreign_key :user_languages, :languages
  end
end
