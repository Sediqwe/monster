class CreateForumals < ActiveRecord::Migration[6.0]
  def change
    create_table :forumals do |t|
      t.string :title
      t.string :desc
      t.references :user, null: false, foreign_key: true
      t.boolean :active
      t.references :forum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
