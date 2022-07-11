class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :desc
      t.boolean :active
      t.string :list_type
      t.string :link
      t.integer :local
      t.boolean :ready
      t.string :version

      t.timestamps
    end
  end
end
