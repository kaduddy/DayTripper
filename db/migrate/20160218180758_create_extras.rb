class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.text :shopping
      t.text :drinking
      t.text :sleeping

      t.timestamps null: false
    end
  end
end
