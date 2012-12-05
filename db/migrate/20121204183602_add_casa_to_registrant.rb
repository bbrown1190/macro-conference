class AddCasaToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :casa, :boolean
  end
end
