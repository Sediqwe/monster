class CreateTranslaters < ActiveRecord::Migration[6.0]
  def change
    create_table :translaters do |t|
      t.text :name

      t.timestamps
    end
  end
end
