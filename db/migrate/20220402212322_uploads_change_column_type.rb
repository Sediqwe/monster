class UploadsChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    remove_column :uploads, :translater, :string
    remove_column :uploads, :platform, :text
    remove_column :uploads, :program, :text
    add_column :uploads, :translater, :integer
    add_column :uploads, :platform, :integer
    add_column :uploads, :program, :integer
    add_reference :uploads, :translater, null: false, foreign_key: true
    add_reference :uploads, :program, null: false, foreign_key: true
    add_reference :uploads, :platform, null: false, foreign_key: true
end
end
