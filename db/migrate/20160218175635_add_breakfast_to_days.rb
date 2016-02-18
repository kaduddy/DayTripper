class AddBreakfastToDays < ActiveRecord::Migration
  def change
    add_column :days, :breakfast, :string
  end
end
