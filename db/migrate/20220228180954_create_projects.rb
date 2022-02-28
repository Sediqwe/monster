class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :desc
      t.boolean :active
      t.boolean :private

      t.timestamps
    end
  end
end
