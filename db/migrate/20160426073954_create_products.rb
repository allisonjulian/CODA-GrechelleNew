class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :classification
      t.string :kind
      t.string :size
      t.text :remarks

      t.timestamps null: false
    end
  end
end
