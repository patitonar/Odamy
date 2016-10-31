class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :project, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :subscriptions, :projects
    add_foreign_key :subscriptions, :users

    add_index :subscriptions, [:project_id, :user_id], :unique => true
  end
end
