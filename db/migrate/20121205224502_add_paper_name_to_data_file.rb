class AddPaperNameToDataFile < ActiveRecord::Migration
  def change
    add_column :data_files, :paper_name, :string
  end
end
