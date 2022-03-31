class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :link, :link_steam
    add_column :games, :link_epic, :string
    add_column :games, :link_other, :string
  end
end
