class AddReadyToLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :ready
    add_column :lists, :ready, :boolean, default: true
  end
end
