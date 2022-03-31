class AddUploadToDownload < ActiveRecord::Migration[6.0]
  def change
    add_reference :downloads, :upload, null: false, foreign_key: true
  end
end
