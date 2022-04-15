class AddBadToUpload < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :bad, :boolean
  end
end
