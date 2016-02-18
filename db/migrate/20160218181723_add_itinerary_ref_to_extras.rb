class AddItineraryRefToExtras < ActiveRecord::Migration
  def change
    add_reference :extras, :itinerary, index: true, foreign_key: true
  end
end
