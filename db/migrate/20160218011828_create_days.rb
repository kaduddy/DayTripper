class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.text :am
      t.text :pm
      t.string :lunch
      t.string :dinner
      t.references :itinerary, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
