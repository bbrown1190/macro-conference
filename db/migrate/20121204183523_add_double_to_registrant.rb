class AddDoubleToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :double, :boolean
  end
end
