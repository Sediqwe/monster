class CreateMegas < ActiveRecord::Migration[6.0]
  def change
    create_table :megas do |t|
      t.string :title
      t.string :link
      t.boolean :active
      t.string :version

      t.timestamps
    end
  end
end
