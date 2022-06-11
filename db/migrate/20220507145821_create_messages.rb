class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :desc
      t.references :user, null: false, foreign_key: true
      t.boolean :active
      t.references :forumal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
