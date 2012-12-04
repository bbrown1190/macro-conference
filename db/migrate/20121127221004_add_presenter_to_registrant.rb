class AddPresenterToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :presenter, :boolean
  end
end
