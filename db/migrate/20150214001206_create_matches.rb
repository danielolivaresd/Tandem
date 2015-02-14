class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :offer, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :matches, :offers
    add_foreign_key :matches, :users
  end
end
