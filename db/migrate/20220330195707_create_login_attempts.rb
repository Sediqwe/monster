class CreateLoginAttempts < ActiveRecord::Migration[6.0]
  def change
    create_table :login_attempts do |t|
      t.string :ip
      t.timestamps
    end
  end
end
