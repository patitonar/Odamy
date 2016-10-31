class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :content
      t.integer :price
      t.string :promo

      t.timestamps null: false
    end
  end
end
