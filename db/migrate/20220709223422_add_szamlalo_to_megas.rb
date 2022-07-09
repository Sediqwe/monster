class AddSzamlaloToMegas < ActiveRecord::Migration[6.0]
  def change
    add_column :megas, :szamlalo, :integer
  end
end
