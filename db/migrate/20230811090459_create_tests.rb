class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
