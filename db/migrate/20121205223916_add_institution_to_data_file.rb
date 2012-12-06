class AddInstitutionToDataFile < ActiveRecord::Migration
  def change
    add_column :data_files, :institution, :string
  end
end
