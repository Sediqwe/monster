class CreateUploads < ActiveRecord::Migration[6.0]
  def change
    create_table :uploads do |t|
      t.string :name
      t.string :version
      t.text :description
      t.references :game, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
