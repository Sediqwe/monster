class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :link
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
