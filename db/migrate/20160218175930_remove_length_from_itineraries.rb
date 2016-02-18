class RemoveLengthFromItineraries < ActiveRecord::Migration
  def change
    remove_column :itineraries, :length, :integer
  end
end
