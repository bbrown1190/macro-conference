class AddEmailToDataFiles < ActiveRecord::Migration
  def change
    add_column :data_files, :email, :string
  end
end
