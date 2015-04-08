class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :from
      t.date :to

      t.timestamps null: false
    end
  end
end
