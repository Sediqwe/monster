class CreateUploads < ActiveRecord::Migration[6.0]
  def change
    create_table :uploads do |t|
      t.string :title
      t.references :project, null: false, foreign_key: true
      t.text :version
      t.text :desc
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
