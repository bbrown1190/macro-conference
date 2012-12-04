class AddFileNameToDataFile < ActiveRecord::Migration
  def change
    add_column :data_files, :file_name, :string
  end
end
