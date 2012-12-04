class AddChairToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :chair, :boolean
  end
end
