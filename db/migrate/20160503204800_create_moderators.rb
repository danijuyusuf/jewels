class CreateModerators < ActiveRecord::Migration[5.0]
  def change
    create_table :moderators do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.boolean :super, default: 0
      t.string :password_digest

      t.timestamps
    end
  end
end
