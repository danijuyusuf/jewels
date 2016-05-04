class CreateOfferings < ActiveRecord::Migration[5.0]
  def change
    create_table :offerings do |t|
      t.string :name
      t.text :description
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
