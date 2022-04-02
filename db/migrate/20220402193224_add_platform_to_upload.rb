class AddPlatformToUpload < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :platform, :references
    add_column :uploads, :program, :references
  end
end
