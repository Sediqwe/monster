class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :desc
      t.integer :blog_type

      t.timestamps
    end
  end
end
