class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.string :video
      t.boolean :header, :null => false, :default => false
      t.string :tag
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :projects
  end
end
