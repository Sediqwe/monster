class AddTranslaterToUploads < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :translater, :string
  end
end
