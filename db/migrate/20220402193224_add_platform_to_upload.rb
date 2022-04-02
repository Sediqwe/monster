class AddPlatformToUpload < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :platform, :text
    add_column :uploads, :program, :text
  end
end
