class FixColumnNameNew < ActiveRecord::Migration[6.0]
  def change
    rename_column :platforms, :name, :platform_name
    rename_column :programs, :name, :program_name
    rename_column :translaters, :name, :translater_name
    
  end
end
