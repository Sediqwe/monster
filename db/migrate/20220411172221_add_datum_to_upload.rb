class AddDatumToUpload < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :datum, :text
  end
end
