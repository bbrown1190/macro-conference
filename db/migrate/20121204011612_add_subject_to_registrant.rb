class AddSubjectToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :subject, :string
  end
end
