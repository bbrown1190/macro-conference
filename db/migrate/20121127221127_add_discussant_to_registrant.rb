class AddDiscussantToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :discussant, :boolean
  end
end
