class AddInstitutionToRegistrant < ActiveRecord::Migration
  def change
    add_column :registrants, :institution, :string
  end
end
