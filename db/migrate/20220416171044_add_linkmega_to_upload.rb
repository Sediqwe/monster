class AddLinkmegaToUpload < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :link_mega, :text
  end
end
