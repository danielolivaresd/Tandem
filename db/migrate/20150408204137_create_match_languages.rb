class CreateMatchLanguages < ActiveRecord::Migration
  def change
    create_table :match_languages do |t|
      t.references :match, index: true
      t.references :language, index: true
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps null: false
    end
    add_foreign_key :match_languages, :matches
    add_foreign_key :match_languages, :languages
  end
end
