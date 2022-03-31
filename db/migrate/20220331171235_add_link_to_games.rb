class AddLinkToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :link_hun, :string
    add_column :games, :done, :boolean
  end
end
