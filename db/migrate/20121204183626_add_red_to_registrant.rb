class AddRedToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :red, :boolean
  end
end
